extends Node2D


var e = 0   #A variable to store how many diffs are found
const total_diffs = 6 #Total number of diffs
var time = 120 #A variable for the timer, in seconds

#A function to check if this diff has been found or not
func _on_diff_1_a_visibility_changed():
	e += 1
	print (e)
	_warp_out()

#A function to check if this diff has been found or not
func _on_diff_2_a_visibility_changed():
	e += 1
	print (e)
	_warp_out()

#A function to check if this diff has been found or not
func _on_diff_3_a_visibility_changed():
	e += 1
	print (e)
	_warp_out()

#A function to check if this diff has been found or not
func _on_diff_4_a_visibility_changed():
	e += 1
	print (e)
	_warp_out()

#A function to check if this diff has been found or not
func _on_diff_5_a_visibility_changed():
	e += 1
	print (e)
	_warp_out()

#A function to check if this diff has been found or not
func _on_diff_6_a_visibility_changed():
	e += 1
	print (e)
	_warp_out()

#A function to warp you back to the level selector if all diffs are found
func _warp_out():
	if e == total_diffs:
		get_tree().change_scene("res://OnClick/VictoryScreen.tscn")

func _time_ran_out():
	if time == 0:
		print("Game Over(Time)")
		get_tree().change_scene("res://Start_screen.tscn")

#A function to decrease the timer after a second
func _on_Timer_timeout():
	time = time-1
