extends Window

var mem_item : Node = null
var held : bool = false
var init_pos : Vector2 = Vector2.ZERO
@onready var is_valid : bool = mem_item.contains_element

func _ready():
	init_pos = Global.get_desktop().get_global_mouse_position()
	add_theme_icon_override("close", Texture2D.new())
	mem_item.tree_exited.connect(_on_item_delete)
	get_viewport().transparent_bg = true

func _process(_delta):
	if !Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		if Global.mouse_on_del:
			if mem_item:
				mem_item.delete_item()
			queue_free()
			return
		if Global.mouse_on_save:
			if mem_item:
				mem_item.delete_item(false)
			if is_valid:
				Global.score_add(50)
			else:
				Global.score_add(-25)
			queue_free()
			return
		# release the item
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
		position = mousepos - (Vector2(size) / 2)

func _on_item_delete():
	mem_item = null
