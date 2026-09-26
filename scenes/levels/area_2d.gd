extends Area2D

const FILE_BEGIN = "res://scenes/"

#func _on_body_entered(body: Node2D) -> void:
	#if body.is_in_group("Player"):
		#print("it works")
		#get_tree().change_scene_to_file("res://scenes/levels/house_interior.tscn")
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		call_deferred(&"change_to_house_interior")


func change_to_house_interior() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/house_interior.tscn")
