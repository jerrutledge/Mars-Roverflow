extends VBoxContainer

var mouse_on = false

func _on_mouse_entered():
	mouse_on = true

func _on_mouse_exited():
	mouse_on = false

func released(item : Object):
	if mouse_on and item.has_method("saved"):
		item.saved()
