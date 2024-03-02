extends Panel

@onready var v_box_container = $VBoxContainer

var mem_item_tscn = preload("res://scenes/mem_item.tscn")

func _ready():
	Global.collect.connect(make_new_mem_item)

func make_new_mem_item():
	var new_item = mem_item_tscn.instantiate()
	v_box_container.add_child(new_item)
