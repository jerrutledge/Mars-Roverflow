extends Area2D

func _on_hit(_area):
	Global.item_collected()
	queue_free()
	
