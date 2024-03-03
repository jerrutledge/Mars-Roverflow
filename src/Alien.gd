extends Area2D
@export var run_speed : float = 30
var vel = Vector2.ZERO
var player = null

func _ready():
	player = Global.player

func _physics_process(delta):
	vel = Vector2.ZERO
	if player:
		vel = position.direction_to(player.position) * run_speed
	position += vel * delta

func _on_hit(_area):
	Global.make_new_virus(null)
	Global.emit_signal('scramble')
	queue_free()
