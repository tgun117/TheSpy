extends Button

var Char_sprite = preload("res://Char4.png")


func _pressed():
	""" Add a if player has the required money here """
	get_node("/root/PlayerNode/Sprite").set_texture(Char_sprite)


