extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		call_deferred(&"change_to_house_interior")




func change_to_house_interior() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level.tscn")
