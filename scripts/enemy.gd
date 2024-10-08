extends RigidBody2D

@onready var anim = $anim

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var enemy_types = anim.sprite_frames.get_animation_names()
	anim.play(enemy_types[randi() % enemy_types.size()])
	print(enemy_types)


func _on_visible_screen_exited() -> void:
	queue_free()
