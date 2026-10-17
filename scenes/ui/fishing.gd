extends Node2D

var is_on_bar = false
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

#func _physics_process(delta: float) -> void:
	#
	#if not is_on_floor():
		#velocity += get_gravity() * delta
##
	#if is_on_floor():
		#direction == 0
	
func _on_area_2d_body_entered(body: Node2D) -> void:
	is_on_bar = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	is_on_bar = false


func _on_timer_timeout() -> void:
	if is_on_bar: 
		%TextureProgressBar.value += 10
	else:
		%TextureProgressBar.value -= 5
	if %TextureProgressBar.value >= 100:
		print('fih')
