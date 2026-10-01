extends Node2D

const SPEED = 60

@onready var ray_cast_south: RayCast2D = $RayCastSouth
@onready var ray_cast_west: RayCast2D = $RayCastWest
@onready var ray_cast_north: RayCast2D = $RayCastNorth
@onready var ray_cast_east: RayCast2D = $RayCastEast
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _process(_delta: float) -> void:
	if ray_cast_east.is_colliding():
		print("east")

	if ray_cast_west.is_colliding():
		print("west")
		
	if ray_cast_south.is_colliding():
		print("south")

	if ray_cast_north.is_colliding():
		print("north")
		
		
		
		
		
