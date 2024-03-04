extends Node

signal collect
signal new_virus(virus)
signal open_item(item)
signal game_over_sig
signal new_score(value)
signal scramble
signal update_memory
signal unpause

var score : int = 0
var desktop : Node = null
var player : Node = null
var mouse_on_save = false
var mouse_on_del = false
var info_minimized: bool = false

func set_desktop(object):
	desktop = object

func get_desktop():
	return desktop

func item_collected():
	score_add(5)
	desktop.play_bing()
	collect.emit()

func make_new_virus(virus):
	new_virus.emit(virus)

func _on_open_item(item : Node):
	open_item.emit(item)

func game_over():
	get_tree().paused = true
	game_over_sig.emit()
	
func hit_virus(): 	
	desktop.play_zap()
	score -= 10
	new_score.emit(score)

func restart():
	score = 0
	get_tree().reload_current_scene()
	if info_minimized:
		desktop.delete_info_log()

func play_deleted_sound():
	desktop.play_delete()

func score_add(score_diff, and_play_sound=true):
	if and_play_sound:
		if score_diff > 10:
			desktop.play_success()
		if score_diff < 0:
			desktop.play_failure()
	score += score_diff
	new_score.emit(score)
