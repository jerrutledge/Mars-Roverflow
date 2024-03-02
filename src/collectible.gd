extends Area2D

func _on_hit(area):
	Global.item_collected()
	queue_free()
