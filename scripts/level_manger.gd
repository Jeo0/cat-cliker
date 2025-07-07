extends Node

var score = 4 # initial number of the total cats to byebye
const initialScore: int = 4;

const END_SCREE:  String = "res://scenes/end_scree.tscn"

@onready var end_timer: Timer = $end_timer

func add_point():
	score -= 1;
	if score == 0:
		score = initialScore
		end_timer.start()


func _on_end_timer_timeout() -> void:
	get_tree().change_scene_to_file(END_SCREE)
