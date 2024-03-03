extends Node2D

var collectible_obj = preload("res://scenes/collectible.tscn")
@export var level_size : Vector2 = Vector2(1000, 1000)
@onready var collectibles = $Collectibles
@onready var collectible_timer = %CollectibleTimer

func _on_collectible_timer_timeout():
	randomize()
	var view : Rect2 = get_viewport_rect() * get_viewport_transform()
	for i in range(100):
		var spawn = Vector2(randf_range(0, level_size.x), randf_range(0, level_size.y))
		var spawn_rect = Rect2(spawn, Vector2(16,16))
		if !spawn_rect.intersects(view):
			var new_collectible : Node2D = collectible_obj.instantiate()
			new_collectible.position = spawn + Vector2(8,8)
			collectibles.add_child(new_collectible)
			break
	collectible_timer.start(randi_range(3, 8))
