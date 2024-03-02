extends ReferenceRect
signal deleted


@onready var label = $HBoxContainer/Label
@onready var text_window = preload("res://scenes/TextWindow.tscn")

var hex_chars = "0123456789ABCDEF"
var data : String = ""
var selected: bool = false
var file_name: String = ""

func _ready():
	data = ""
	for i in range(200):
		data = data + hex_chars[randi() % 16]
	file_name = data.substr(0, 20) + "..."
	label.text = file_name

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
				Global._on_open_item(self)
			else:
				last_click_time = current_time
		else:
			selected = true
			$SelectRect.visible = false
	if Input.is_action_pressed('delete'):
		if selected:
			delete_item()

func delete_item():
	deleted.emit()
	queue_free()
	
