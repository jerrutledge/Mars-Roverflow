extends Window

var item : Node

func _ready():
	item.deleted.connect(_on_close_requested)

func _on_close_requested():
	queue_free()
