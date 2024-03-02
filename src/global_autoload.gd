extends Node

signal collect
signal open_item(item)

func item_collected():
	collect.emit()

func _on_open_item(item : Node):
	open_item.emit(item)
