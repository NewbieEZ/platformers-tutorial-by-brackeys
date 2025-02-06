extends NodeState

@export var player: CharacterBody2D

var gravity_value = ProjectSettings.get_setting("physics/2d/default_gravity")

func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	player.velocity.y += gravity_value * _delta


func _on_next_transitions() -> void:
	pass


func _on_enter() -> void:
	pass


func _on_exit() -> void:
	pass
