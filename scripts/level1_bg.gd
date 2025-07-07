extends Sprite2D
@onready var bg_sound: AudioStreamPlayer2D = $"../../LevelManger/bg_sound"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	bg_sound.play()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
