extends CharacterBody2D

@export var speed = 400
@export var level_size : Vector2 = Vector2(1000,1000)

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
	position = position.clamp(Vector2(16,16), level_size)
