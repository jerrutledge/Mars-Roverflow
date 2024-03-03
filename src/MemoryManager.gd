extends Panel

@onready var v_box_container = %VBoxContainer

var mem_item_tscn = preload("res://scenes/mem_item.tscn")
var since_virus : int = 0

func _ready():
	Global.collect.connect(make_new_mem_item)
	Global.new_virus.connect(replicate_virus)
	Global.scramble.connect(scramble)

func game_over_check():
	if v_box_container.get_child_count() >= 8:
		Global.game_over()

func make_new_mem_item():
	game_over_check()
	var new_item = mem_item_tscn.instantiate()
	new_item.is_virus = randi() % 100 < 20 + (20*since_virus)
	if !new_item.is_virus:
		since_virus += 1
	else:
		since_virus = 0
	v_box_container.add_child(new_item)

func replicate_virus(virus):
	game_over_check()
	var new_item = mem_item_tscn.instantiate()
	new_item.is_virus = true
	if virus:
		new_item.data = virus.data
	v_box_container.add_child(new_item)

func scramble():
	var start_children :Array = v_box_container.get_children()
	for item in start_children:
		v_box_container.remove_child(item)
	start_children.shuffle()
	for item in start_children:
		v_box_container.add_child(item)
