extends Control

var text_window = preload("res://scenes/TextWindow.tscn")
var game_over_popup = preload("res://scenes/GameOver.tscn")
var dragged_item = preload("res://scenes/DraggedData.tscn")
var game_over_audio = preload("res://scenes/GameOverAudio.tscn")
@onready var bing1 = $bing

@export var init_new_window : Vector2 = Vector2(400, 200)
@export var bing = bing1

var new_window_spawn : Vector2 = init_new_window
var window_minimized: bool = false

func _ready():
	Global.open_item.connect(_on_open_item)
	Global.game_over_sig.connect(_on_game_over)
	Global.set_desktop(self)
	Global.score = 100
	Global.score_add(0)
	Global.game_over_state = false
	if Global.info_minimized:
		$Info.queue_free()
	$begin.play()

func _on_open_item(item):
	var window = text_window.instantiate()
	window.position = new_window_spawn
	new_window_spawn = new_window_spawn + Vector2(32,32)
	if new_window_spawn.x > 520:
		init_new_window = init_new_window + Vector2(32,-32)
		new_window_spawn = init_new_window
		if init_new_window.y < 128:
			init_new_window = Vector2 (400, 200) - Vector2(32,-32)
	window.title = item.file_name
	window.get_node("Text").text = item.data
	window.item = item
	add_child(window)

func _on_game_over():
	add_child(game_over_popup.instantiate())
	add_child(game_over_audio.instantiate())
	$GameOverAudio.play()

func play_bing():
	$bing.play()

func play_failure():
	$failure.play()

func play_success():
	$success.play()

func play_delete():
	$delete.play()

func play_virus():
	$virus.play()
	
func play_zap():
	$zap.play()
	
func play_lose():
	$lose.play()
	
func play_begin():
	$begin.play()

func delete_info_log():
	window_minimized = true

func make_dragged_item(creator):
	var new_item = dragged_item.instantiate()
	new_item.mem_item = creator
	add_child(new_item)
	return new_item

func _on_timer_timeout():
	Global.score_add(-1, false)
	$Timer.start(5)
