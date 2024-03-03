extends Area2D

func _on_hit(_area):
	Global.make_new_virus(null)
	queue_free()
