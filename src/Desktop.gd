extends Control

var text_window = preload("res://scenes/TextWindow.tscn")
var game_over_popup = preload("res://scenes/GameOver.tscn")

@export var init_new_window : Vector2 = Vector2(400, 200)
var new_window_spawn : Vector2 = init_new_window

func _ready():
	Global.open_item.connect(_on_open_item)
	Global.game_over_sig.connect(_on_game_over)

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
