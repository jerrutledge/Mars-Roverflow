extends ReferenceRect
@onready var label = $HBoxContainer/Label

var hex_chars = "0123456789ABCDEF"
var data : String = ""
var selected: bool = false

func _ready():
	data = ""
	for i in range(200):
		data = data + hex_chars[randi() % 16]
	label.text = data.substr(0, 20) + "..."

func _on_mouse_entered():
	pass



func _input(event):
	if event is InputEventMouseButton and event.pressed:
		if position.x < event.position.x and event.position.x < position.x + size.x and \
			position.y < event.position.y and event.position.y < position.y + size.y:
			selected = true
			$SelectRect.visible = true
		else:
			selected = true
			$SelectRect.visible = false
	
