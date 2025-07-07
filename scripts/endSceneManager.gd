extends Node
const MENU: String = "res://scenes/menu.tscn"
@onready var end_timer: Timer = $"../end_timer"

func _ready() -> void:
	end_timer.start()
	
func _on_end_timer_timeout() -> void:
	get_tree().change_scene_to_file(MENU)
