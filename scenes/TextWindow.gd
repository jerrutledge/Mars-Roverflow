extends Window

var item : Node

func _ready():
	item.deleted.connect(_on_close_requested)

func _on_close_requested():
	queue_free()
	$Text.size = size
	$ColorRect.size = size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_close_requested():
	hide()

func _on_size_changed():
	$Text.size = size
	$ColorRect.size = size
	
