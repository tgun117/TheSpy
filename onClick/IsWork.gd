extends Node

# Declare member variables here. Examples:
var e = 0
var total_errors = 6

#Function for counting that an error has been found
func _on_error_3_a_visibility_changed():
	e += 1
	print(e)
	_warp_out()

#Function for counting that an error has been found
func _on_error_2_a_visibility_changed():
	e += 1
	print (e)
	_warp_out()

#Function for counting that an error has been found
func _on_error_1_a_visibility_changed():
	e += 1
	print (e)
	_warp_out()

#Function for counting that an error has been found
func _on_error_4_a_visibility_changed():
	e += 1
	print (e)
	_warp_out()

#Function for counting that an error has been found
func _on_error_5_a_visibility_changed():
	e += 1
	print (e)
	_warp_out()

#Function for counting that an error has been found
func _on_error_6_a_visibility_changed():
	e += 1
	print (e)
	_warp_out()

#Function for warping back to level selector
func _warp_out():
	if e == total_errors:
		get_tree().change_scene("res://test.tscn")