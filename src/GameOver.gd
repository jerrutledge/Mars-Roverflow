extends Window

var hiscore = preload("res://scenes/high_score.tscn")

func _on_continue_button_pressed():
	get_tree().paused = false
	Global.restart()

func _ready():
	Leaderboard._get_leaderboards()
	Leaderboard.leaderboard_data.connect(_on_get_leaderboard)
	%PlayerName.text = Leaderboard.player_name
	%ScoreLabel.text = "Final score: " + str(Global.score)

func _on_get_leaderboard(json):
	for child in %Leaderboard.get_children():
		%Leaderboard.remove_child(child)
		child.queue_free()
	var new_hs = hiscore.instantiate()
	new_hs.rank = "Rank"
	new_hs.player_name = "Player Name"
	new_hs.score = "Score"
	%Leaderboard.add_child(new_hs)
	
	for n in json.get_data().items.size():
		new_hs = hiscore.instantiate()
		new_hs.rank = str(json.get_data().items[n].rank)
		new_hs.player_name = str(json.get_data().items[n].player.name)
		new_hs.score = str(json.get_data().items[n].score)
		%Leaderboard.add_child(new_hs)

func _on_upload_button_pressed():
	Leaderboard._change_player_name(%PlayerName.text)
	Leaderboard._upload_score(Global.score)
