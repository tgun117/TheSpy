extends Area2D

var invisible = true

func _ready():
	pass # Replace with function body.

func _on_Area2D5_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed() && invisible == true:
			$diff_5_a.visible = not $diff_5_a.visible
			$diff_5_b.visible = not $diff_5_b.visible

func _on_diff_5_a_visibility_changed():
	invisible = false
