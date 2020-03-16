extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var e = 0
const total_errors = 4

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




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
		get_tree().change_scene("res://World.tscn")
