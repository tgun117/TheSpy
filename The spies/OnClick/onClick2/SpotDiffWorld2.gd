extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var e = 0
const total_errors = 4
var time = 120

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _on_diff_1_a_visibility_changed():
	e += 1
	print (e)
	_warp_out()


func _on_diff_2_a_visibility_changed():
	e += 1
	print (e)
	_warp_out()


func _on_diff_3_a_visibility_changed():
	e += 1
	print (e)
	_warp_out()


func _on_diff_4_a_visibility_changed():
	e += 1
	print (e)
	_warp_out()


func _warp_out():
	if e == total_errors:
		get_tree().change_scene("res://OnClick/VictoryScreen.tscn")
		return time

func _time_ran_out():
	if time == 0:
		print("Game Over(Time)")
		get_tree().change_scene("World.tscn")


func _on_Timer_timeout():
	time = time-1
