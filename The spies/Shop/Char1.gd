extends Button

const cost = 50
var Char_sprite = preload("res://Char1.png")


func _pressed():
	if PlayerNode.coins >= cost:
		PlayerNode.coins -= cost
		get_node("/root/PlayerNode/Sprite").set_texture(Char_sprite)


