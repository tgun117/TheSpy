extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var e = 0
const total_errors = 4
var time = 120
var hp = PlayerNode.health*2
var diff_found = false
var found = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _on_diff_1_a_visibility_changed():
	e += 1
	print (e)
	found = true
	_warp_out()


func _on_diff_2_a_visibility_changed():
	e += 1
	print (e)
	found = true
	_warp_out()


func _on_diff_3_a_visibility_changed():
	e += 1
	print (e)
	found = true
	_warp_out()


func _on_diff_4_a_visibility_changed():
	e += 1
	print (e)
	found = true
	_warp_out()


func _warp_out():
	if e == total_errors:
		PlayerNode.health = hp/2
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


func _on_Area2D5_input_event(viewport, event, shape_idx):
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