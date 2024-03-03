extends Panel
@onready var label = %Label

func _ready():
	Global.new_score.connect(_on_new_score)

func _on_new_score(score : int):
	label.text = "Score: " + str(score)
