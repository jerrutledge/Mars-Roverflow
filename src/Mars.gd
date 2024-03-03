extends Node2D

var collectible_obj = preload("res://scenes/collectible.tscn")
var alien_obj = preload("res://scenes/Alien.tscn")
@export var level_size : Vector2 = Vector2(1000, 1000)
@onready var collectibles = $Collectibles
@onready var aliens = $Aliens

@onready var collectible_timer = %CollectibleTimer
@onready var alien_timer = %AlienTimer

func _on_collectible_timer_timeout():
	randomize()
	var new_collectible : Node2D = collectible_obj.instantiate()
	new_collectible.position = get_offscreen_coords()
	collectibles.add_child(new_collectible)
	collectible_timer.start(randi_range(3, 8))

func get_offscreen_coords():
	var view : Rect2 = get_viewport_rect() * get_viewport_transform()
	for i in range(100):
		var spawn = Vector2(randf_range(0, level_size.x), randf_range(0, level_size.y))
		var spawn_rect = Rect2(spawn, Vector2(16,16))
		if !spawn_rect.intersects(view):
			return spawn + Vector2(8, 8)
	var spawn = Vector2.ZERO
	var spawn_rect = Rect2(spawn, Vector2(16,16))
	if !spawn_rect.intersects(view):
		return spawn + Vector2(8, 8)
	return level_size - Vector2(8, 8)

func _on_alien_timer_timeout():
	alien_timer.start(randi_range(16, 32))
	if aliens.get_child_count() >= 8:
		return # too many aliens already
	var new_alien : Node2D = alien_obj.instantiate()
	new_alien.position = get_offscreen_coords()
	collectibles.add_child(new_alien)
