extends Window

func _ready():
	Global.unpause.connect(queue_free)
	%NameTextEdit.text = Leaderboard.player_name

func _on_resume_button_pressed():
	get_tree().paused = false
	queue_free()

func _on_quit_button_pressed():
	get_tree().quit()

func _on_update_button_pressed():
	var new_name : String = %NameTextEdit.text
	if len(new_name) > 17:
		new_name = new_name.substr(0,16)
	Leaderboard._change_player_name(new_name)
