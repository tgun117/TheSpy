extends Button
#Takes the player to the level selector when the button is pressed
func _pressed():
	get_tree().change_scene("res://World.tscn")