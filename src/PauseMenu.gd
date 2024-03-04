extends Window

func _ready():
	Global.unpause.connect(queue_free)

func _on_resume_button_pressed():
	get_tree().paused = false
	queue_free()


func _on_quit_button_pressed():
	get_tree().quit()
