extends Button

var Char_sprite = preload("res://Char1.png")


func _pressed():
	get_node("/root/PlayerNode/Sprite").set_texture(Char_sprite)
	


