extends Sprite2D


@onready var sfx_death: AudioStreamPlayer2D = $"../sfx_death"
@onready var timer: Timer = $"../Timer"
@onready var animated_sprite_2d: AnimatedSprite2D = $"../AnimatedSprite2D"
@onready var level_manger: Node = $"../../../../LevelManger"
@onready var end_timer: Timer = $"../../../../LevelManger/end_timer"

func _ready():
	animated_sprite_2d.hide();
	self.show()

func _input(event):
	if event.is_action_pressed("click"):
		if is_pixel_opaque(get_local_mouse_position()):
			print("Cat3 clicked: Whumaba");

			sfx_death.play();
			level_manger.add_point()

			# play death animation
			self.hide()
			animated_sprite_2d.show()
			animated_sprite_2d.frame = 0
			animated_sprite_2d.play("death") 
			timer.start()

func _on_timer_timeout():
	animated_sprite_2d.queue_free()
	self.queue_free()
