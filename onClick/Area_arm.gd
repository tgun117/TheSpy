extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var invisible = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_arm_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed() && invisible == true:
			$error_3_a.visible = not $error_3_a.visible
			$error_3_b.visible = not $error_3_b.visible


func _on_error_3_a_visibility_changed():
	invisible = false
	
