extends Node

signal collect

func item_collected():
	collect.emit()
