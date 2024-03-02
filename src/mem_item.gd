extends ReferenceRect
@onready var label = $HBoxContainer/Label
@onready var text_window = preload("res://scenes/TextWindow.tscn")

var hex_chars = "0123456789ABCDEF"
var data : String = ""
var selected: bool = false

func _ready():
	data = ""
	for i in range(200):
		data = data + hex_chars[randi() % 16]
	label.text = data.substr(0, 20) + "..."

var double_click_limit = 200.0
var last_click_time = 0.0


func _input(event):
	if event is InputEventMouseButton and event.pressed:
		if position.x < event.position.x and event.position.x < position.x + size.x and \
			position.y < event.position.y and event.position.y < position.y + size.y:
			selected = true
			$SelectRect.visible = true
			var current_time = Time.get_ticks_msec()
			if current_time - last_click_time < double_click_limit:
				var manager = get_parent()
				var desktop = manager.get_parent()
				var window = text_window.instantiate()
				window.position = Vector2(global_position.x + 400, global_position.y + 200)
				window.title = label.text
				window.get_node("Text").text = data
				desktop.add_child(window)
				print("Click!")
			else:
				last_click_time = current_time
			
		else:
			selected = true
			$SelectRect.visible = false
	
