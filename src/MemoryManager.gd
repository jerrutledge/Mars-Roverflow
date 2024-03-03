extends Panel

@onready var v_box_container = %VBoxContainer

var mem_item_tscn = preload("res://scenes/mem_item.tscn")

func _ready():
	Global.collect.connect(make_new_mem_item)
	Global.new_virus.connect(replicate_virus)

func make_new_mem_item():
	var new_item = mem_item_tscn.instantiate()
	new_item.is_virus = randi() % 100 < 20
	v_box_container.add_child(new_item)

func replicate_virus(virus):
	var new_item = mem_item_tscn.instantiate()
	new_item.is_virus = true
	new_item.data = virus.data
	v_box_container.add_child(new_item)
