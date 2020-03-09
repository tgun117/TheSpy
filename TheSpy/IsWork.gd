extends Node

# Declare member variables here. Examples:
# var a = 2
var e = 0
var total_errors = 6

func _warp_out():
	if e == total_errors:
		get_tree().change_scene("root/test.tscn")
		
