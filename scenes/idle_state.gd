extends NodeState

@export var player: CharacterBody2D
@export var animated_sprite_2d: AnimatedSprite2D

var direction: Vector2

func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	if Input.is_action_pressed("left"):
		direction = Vector2.LEFT
	elif Input.is_action_pressed("right"):
		direction = Vector2.RIGHT
	elif Input.is_action_pressed("jump"):
		direction = Vector2.UP
	else:
		direction = Vector2.ZERO
		
	if direction == Vector2.LEFT:
		animated_sprite_2d.flip_h = true
	elif direction == Vector2.RIGHT:
		animated_sprite_2d.flip_h = false


func _on_next_transitions() -> void:
	pass


func _on_enter() -> void:
	pass


func _on_exit() -> void:
	pass
