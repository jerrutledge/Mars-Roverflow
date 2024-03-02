extends CharacterBody2D

@export var speed = 400
@export var level_size : Vector2 = Vector2(1000,1000)
@onready var camera_2d : Camera2D = $Camera2D

func _ready():
	# set camera limit to level_size
	camera_2d.limit_left = 0
	camera_2d.limit_top = 0
	camera_2d.limit_right = level_size.x
	camera_2d.limit_bottom = level_size.y

func _process(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("rover_right"):
		velocity.x += 1
	if Input.is_action_pressed("rover_left"):
		velocity.x -= 1
	if Input.is_action_pressed("rover_down"):
		velocity.y += 1
	if Input.is_action_pressed("rover_up"):
		velocity.y -= 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		#$AnimatedSprite2D.play()
	#else:
		#$AnimatedSprite2D.stop()
	
	position += velocity * delta
	position = position.clamp(Vector2(16,16), level_size - Vector2(16,16))
