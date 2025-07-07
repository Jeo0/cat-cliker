extends Control

const LEVEL_1: String = "res://scenes/level_1.tscn"

func _on_start_butt_pressed() -> void:
	get_tree().change_scene_to_file(LEVEL_1)

func _on_options_butt_pressed() -> void:
	pass # Replace with function body.

func _on_exit_butt_pressed() -> void:
	get_tree().exit()
