extends Node2D

var e = 0
const total_diffs = 5
var time = 120
var hp = PlayerNode.health*2
var found = false
var diff_found = false

func _ready():
	$Label2.set_text(str("0/",total_diffs))

func _on_diff_1_a_visibility_changed():
	e += 1
	print (e)
	$Label2.set_text(str(e,"/",total_diffs))
	found =true
	_warp_out()

func _on_diff_2_a_visibility_changed():
	e += 1
	print (e)
	$Label2.set_text(str(e,"/",total_diffs))
	found =true
	_warp_out()

func _on_diff_3_a_visibility_changed():
	e += 1
	print (e)
	$Label2.set_text(str(e,"/",total_diffs))
	found =true
	_warp_out()

func _on_diff_4_a_visibility_changed():
	e += 1
	print (e)
	$Label2.set_text(str(e,"/",total_diffs))
	found =true
	_warp_out()

func _on_diff_5_a_visibility_changed():
	e += 1
	print (e)
	$Label2.set_text(str(e,"/",total_diffs))
	found =true
	_warp_out()

func _warp_out():
	if e == total_diffs:
		get_tree().change_scene("res://OnClick/VictoryScreen.tscn")


func _time_ran_out():
	if time == 0:
		print("Game Over(Time)")
		get_tree().change_scene("res://Game_Over.tscn")


func _lost_all_hp():
	if hp == 0:
		print("Game Over(HP)")
		get_tree().change_scene("res://Game_Over.tscn")

#A function to decrease the timer after a second, and check the current HP
func _on_Timer_timeout():
	time = time-1
	$Label3.set_text(str("HP:",hp/2))


func _on_Area2D6_input_event(viewport, event, shape_idx):
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