extends CharacterBody2D

@export var speed = 250
@export var level_size : Vector2 = Vector2(1000,1000)
@onready var camera_2d : Camera2D = $Camera2D

func _ready():
	# set camera limit to level_size
	camera_2d.limit_left = 0
	camera_2d.limit_top = 0
	camera_2d.limit_right = int(level_size.x)
	camera_2d.limit_bottom = int(level_size.y)
	Global.player = self

func _process(delta):
	var vel = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("rover_right"):
		vel.x += 1
	if Input.is_action_pressed("rover_left"):
		vel.x -= 1
	if Input.is_action_pressed("rover_down"):
		vel.y += 1
	if Input.is_action_pressed("rover_up"):
		vel.y -= 1

	if vel.length() > 0:
		vel = vel.normalized() * speed
	
	position += vel * delta
	position = position.clamp(Vector2(16,16), level_size - Vector2(16,16))

func _on_tree_exiting():
	Global.player = null
