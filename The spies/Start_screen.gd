extends Button
#Takes the player to the main menu when the button is pressed
func _pressed():
	get_tree().change_scene("res://Start_screen.tscn")