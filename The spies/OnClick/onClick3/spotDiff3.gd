extends Node2D

var time = 120
var e = 0
const total_errors = 5

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

func _on_diff_5_a_visibility_changed():
	e += 1
	print (e)
	_warp_out()

func _warp_out():
	if e == total_errors:
		
		PlayerNode.recent_reward = time / 2
		PlayerNode.coins += time / 2
		get_tree().change_scene("res://OnClick/VictoryScreen.tscn")


func _time_ran_out():
	if time == 0:
		print("Game Over(Time)")
		get_tree().change_scene("res://Game_Over.tscn")


func _on_Timer_timeout():
	time = time - 1
