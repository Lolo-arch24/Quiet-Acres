extends Area2D
#
#@onready var player = $Objects/Player
#@onready var day_transition_material = $Overlay/CanvasLayer/DayTransitionLayer.material
#@export var daytime_colour: Gradient
#
##func _on_body_entered(body: Node2D) -> void:
	##var daytime_point = 1 - ($Timers/DayTimer.time_left / $Timers/DayTimer.wait_time)
	##var color = daytime_colour.sample(daytime_point)
	##$Overlay/DayTimeColour.color = color
	##if body.is_in_group("Player"):
		##day_restart()
##
##func day_restart():
	##var tween = create_tween()
	##tween.tween_property(day_transition_material, "shader_parameter/progress", 0.0, 1.0)
	##tween.tween_interval(0.5)
	##tween.tween_callback(level_reset)
	##tween.tween_property(day_transition_material, "shader_parameter/progress", 1.0, 1.0)
##
##func level_reset():
	##for plant in get_tree().get_nodes_in_group('Plants'):
		##plant.grow(plant.coord in $Layers/WaterPatchLayer.get_used_cells())
	##$Layers/WaterPatchLayer.clear()
	##$Overlay/CanvasLayer/PlantInfoContainer.update_all()
	#
	##$Timers/DayTimer.start()
	##for object in get_tree().get_nodes_in_group('Objects'):
		##if 'reset' in object:
			##object.reset()
#
#
#func _on_body_entered(body: Node2D) -> void:
	#if body.is_in_group("Player"):
		#day_restart()
