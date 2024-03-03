extends Node

signal collect
signal new_virus(virus)
signal open_item(item)

func item_collected():
	collect.emit()

func make_new_virus(virus):
	new_virus.emit(virus)

func _on_open_item(item : Node):
	open_item.emit(item)
