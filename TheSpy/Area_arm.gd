extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_arm_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$error_3_a.visible = not $error_3_a.visible
			$error_3_b.visible = not $error_3_b.visible
			get_node("/root/IsWork").e = get_node("/root/IsWork").e+1
