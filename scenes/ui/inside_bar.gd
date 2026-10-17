extends RigidBody2D

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("fishing"):
		apply_impulse(Vector2(0, -180))
