extends Button
#Takes the player to the shop when the button is pressed
func _pressed():
	get_tree().change_scene("res://Shop/Shop.tscn")