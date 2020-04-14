extends Node2D


var e = 0   #A variable to store how many diffs are found
const total_diffs = 6 #Total number of diffs
var time = 120 #A variable for the timer, in seconds
var hp = PlayerNode.health*2
var diff_found = false
var found = false

#A function to check if this diff has been found or not
func _on_diff_1_a_visibility_changed():
	e += 1
	print ("Diffs found :",e)
	found = true
	_warp_out()

#A function to check if this diff has been found or not
func _on_diff_2_a_visibility_changed():
	e += 1
	print ("Diffs found :",e)
	found = true
	_warp_out()

#A function to mark this diff as found once clicked
func _on_diff_3_a_visibility_changed():
	e += 1
	print ("Diffs found :",e)
	found = true
	_warp_out()

#A function to mark this diff as found once clicked
func _on_diff_4_a_visibility_changed():
	e += 1
	print ("Diffs found :",e)
	found = true
	_warp_out()

#A function to mark this diff as found once clicked
func _on_diff_5_a_visibility_changed():
	e += 1
	print ("Diffs found :",e)
	found = true
	_warp_out()

#A function to mark this diff as found once clicked
func _on_diff_6_a_visibility_changed():
	e += 1
	print ("Diffs found :",e)
	found = true
	_warp_out()

#A function to warp you back to the level selector if all diffs are found
func _warp_out():
	if e == total_diffs:
		PlayerNode.health = hp/2
		PlayerNode.recent_reward = time / 2
		PlayerNode.coins += time / 2
		get_tree().change_scene("res://OnClick/VictoryScreen.tscn")

#A function that takes you to the game over screen when the timer runs out
func _time_ran_out():
	if time == 0:
		print("Game Over(Time)")
		get_tree().change_scene("res://Start_screen.tscn")

func _lost_all_hp():
	if hp == 0:
		print("Game Over(HP)")
		get_tree().change_scene("res://Start_screen.tscn")

#A function to decrease the timer after a second, and check the current HP
func _on_Timer_timeout():
	time = time-1
	$Label3.set_text(str("HP:",hp/2))

func _on_Area2D7_input_event(viewport, event, shape_idx):
	_check_diff_found()
	if event is InputEventMouseButton && diff_found == false:
		hp -= 1
		print("Lost 1 HP, remaining HP:",hp)
		_lost_all_hp()
	diff_found = false

#A function that checks if a dif was found or not
func _check_diff_found():
	if found == true:
		diff_found = true
		hp += 1
		print("HP:",hp)
	found = false
