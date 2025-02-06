class_name GameInputEvents


static func movement_input(transform: Transform2D) -> Vector2:
	var direction = Input.get_axis("left","right")
	
	return direction
	
static func is_movement_input() -> bool:
	if direction == Vector2.ZERO:
		return false
	else:
		return true
