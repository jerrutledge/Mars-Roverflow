extends Sprite2D

var mem_item : Node = null
var held : bool = false
var init_pos : Vector2 = Vector2.ZERO

func _ready():
	init_pos = get_global_mouse_position()

func _process(_delta):
	if !Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		mem_item.show()
		queue_free()
		return
	var mousepos = get_global_mouse_position()
	if !held:
		var dist = mousepos - init_pos
		if dist.length() > 20:
			held = true
			show()
			mem_item.hide()
	else:
		global_transform.origin = get_global_mouse_position()
	
