extends Node2D

const SPEED = 100.0
const JUMP_VELOCITY = -350.0
var direction = -1

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_bottom = $RayCastBottom
@onready var green_slime = $"."

func _physics_process(delta):
	if direction > 0 :
		$AnimatedSprite2D.flip_h = false
	if direction < 0 :
		$AnimatedSprite2D.flip_h = true
	if ray_cast_right.is_colliding():
		direction = -1
	if ray_cast_left.is_colliding():
		direction = 1
	if not ray_cast_bottom.is_colliding():
		position.y += 1 * SPEED * delta
	position.x += direction * SPEED * delta
