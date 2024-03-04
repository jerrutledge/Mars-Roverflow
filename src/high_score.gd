extends HBoxContainer

var score : String = "0"
var player_name : String = "Player"
var rank : String = ""

func _ready():
	$Rank.text = rank
	$PlayerScore.text = score
	$PlayerName.text = player_name
