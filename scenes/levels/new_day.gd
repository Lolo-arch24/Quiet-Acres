extends Area2D

@onready var bed = $Bed
@onready var level = $"."

#func _ready() -> void:
	## Connect the signal from Scene A to a function in Scene B
	#bed.sleep.connect(level._on_sleep_received)



#func _on_body_entered(body: Node2D) -> void:
	#day_restart()
