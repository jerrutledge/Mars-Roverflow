extends Window

func _on_continue_button_pressed():
	get_tree().paused = false
	Global.restart()
