extends Button

var pause_menu = preload("res://scenes/PauseMenu.tscn")

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		_on_pressed()

func _on_pressed():
	if !get_tree().paused:
		Global.desktop.add_child(pause_menu.instantiate())
	else:
		Global.unpause.emit()
	get_tree().paused = !get_tree().paused
