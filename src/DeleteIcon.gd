extends VBoxContainer

func _process(_delta):
	Global.mouse_on_del = get_rect().has_point(get_global_mouse_position())
