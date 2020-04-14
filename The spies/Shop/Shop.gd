extends Node2D

func _ready():
	get_node("ShopStats").set_text("HP: " + str(PlayerNode.health) + "\ncoins" + str(PlayerNode.coins))
	_update_stats()
	pass 

func _update_stats():
	get_node("ShopStats").set_text("HP: " + str(PlayerNode.health) + "\ncoins" + str(PlayerNode.coins))
	pass
