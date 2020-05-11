extends Area2D


var invisible = true

#A function to set the red circle sprites visible when the area is clicked
func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed() && invisible == true:
			$diff_1_a.visible = not $diff_1_a.visible
			$diff_1_b.visible = not $diff_1_b.visible

#A function to set invisible to false to avoide the same difference being counted several times
func _on_diff_1_a_visibility_changed():
	invisible = false