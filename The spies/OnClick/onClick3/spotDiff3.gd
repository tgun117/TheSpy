extends Node2D

var e = 0 #A variable to store how many difference are found
const total_diffs = 5 #Total number of difference in this level
var time = 120 #A variable for the time in the timer(in seconds)
var hp = PlayerNode.health*2 #Player health times 2, since the HP reduction function runs twice, and therefor doubbles it while in the level.
var found = false #A boolean that is true when a difference is found, and false otherwise
var diff_found = false #A boolean to be set true when found is true

#Sets the text to 0/total number of difference when the level is first loaded.
func _ready():
	$Label2.set_text(str("0/",total_diffs))

#A function to check if this difference has been found or not, and update the differences found display
func _on_diff_1_a_visibility_changed():
	e += 1
	print (e)
	$Label2.set_text(str(e,"/",total_diffs))
	found =true
	_warp_out()

#A function to check if this difference has been found or not, and update the differences found display
func _on_diff_2_a_visibility_changed():
	e += 1
	print (e)
	$Label2.set_text(str(e,"/",total_diffs))
	found =true
	_warp_out()

#A function to check if this difference has been found or not, and update the differences found display
func _on_diff_3_a_visibility_changed():
	e += 1
	print (e)
	$Label2.set_text(str(e,"/",total_diffs))
	found =true
	_warp_out()

#A function to check if this difference has been found or not, and update the differences found display
func _on_diff_4_a_visibility_changed():
	e += 1
	print (e)
	$Label2.set_text(str(e,"/",total_diffs))
	found =true
	_warp_out()

#A function to check if this difference has been found or not, and update the differences found display
func _on_diff_5_a_visibility_changed():
	e += 1
	print (e)
	$Label2.set_text(str(e,"/",total_diffs))
	found =true
	_warp_out()

#A function to warp the player back to the level selector if all diffs are found
func _warp_out():
	if e == total_diffs:
		PlayerNode.health = (hp+1)/2 #Reduces the HP back to the player health when exiting the level
		PlayerNode.recent_reward = time / 2
		PlayerNode.coins += time / 2
		get_tree().change_scene("res://OnClick/VictoryScreen.tscn")

#A function that takes the player to the game over screen when the timer runs out
func _time_ran_out():
	if time == 0:
		print("Game Over(Time)")
		get_tree().change_scene("res://Game_Over.tscn")

#A function that takes the player to the game over screen when they run out of HP
func _lost_all_hp():
	if hp == 0:
		print("Game Over(HP)")
		get_tree().change_scene("res://Game_Over.tscn")

#A function to decrease the timer after 1 second, and updates the current HP display(Label3) 
func _on_Timer_timeout():
	time = time-1
	$Label3.set_text(str("HP:",hp/2))

#A function to register when the player clicks the screen, and checks if a difference was clicked or not. If a difference was not clicked it lowers the HP by 1. This runs twice during 1 click in gameplay, and will decrease 1 HP for a click on a difference.
func _on_Area2D6_input_event(viewport, event, shape_idx):
	_check_diff_found()
	if event is InputEventMouseButton && diff_found == false:
		hp -= 1
		print("Lost 1 HP, remaining HP:",hp)
		_lost_all_hp()
	diff_found = false

#A function that checks if a difference was found or not, and increases HP by 1. To make up for the function above (_on_Area2D6_input_event) reducing HP by 1 when finding a difference.
func _check_diff_found():
	if found == true:
		diff_found = true
		hp += 1
		print("HP:",hp)
	found = false