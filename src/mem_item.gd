extends HBoxContainer
@onready var label = $Label

var hex_chars = "0123456789ABCDEF"
var data : String = ""

func _ready():
	data = ""
	for i in range(200):
		data = data + hex_chars[randi() % 16]
	label.text = data.substr(0, 20) + "..."
