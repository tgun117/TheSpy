extends Node

# Declare member variables here. Examples:
# var a = 2
var e = 0
var total_errors = 6

func _on_error_3_a_visibility_changed():
	e = e+1
	


func _on_error_2_a_visibility_changed():
	e = e+1


func _on_error_1_a_visibility_changed():
	e = e+1


func _on_error_4_a_visibility_changed():
	e = e+1


func _on_error_5_a_visibility_changed():
	e = e+1


func _on_error_6_a_visibility_changed():
	e = e+1
	
func _warp_out():
	print(e)
	if e == total_errors:
		get_tree().change_scene("test.tscn")
