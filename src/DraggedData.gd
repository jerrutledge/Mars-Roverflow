extends Window

var mem_item : Node = null
var held : bool = false
var init_pos : Vector2 = Vector2.ZERO
@onready var sprite_2d : Sprite2D = %Sprite2D
@onready var sprite_size : Vector2 = sprite_2d.texture.get_size()

func _ready():
	init_pos = Global.get_desktop().get_global_mouse_position()
	add_theme_icon_override("close", Texture2D.new())
	mem_item.tree_exited.connect(_on_item_delete)
	get_viewport().transparent_bg = true

func _process(_delta):
	if !Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		if mem_item:
			mem_item.show()
		queue_free()
		return
	var mousepos = Global.get_desktop().get_global_mouse_position()
	if !held:
		var dist = mousepos - init_pos
		if dist.length() > 20:
			held = true
			show()
			if mem_item:
				mem_item.hide()
	else:
		position = mousepos - (sprite_size / 2)

func _on_item_delete():
	mem_item = null
