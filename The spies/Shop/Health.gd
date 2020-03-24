extends Button

func _pressed():
	""" Add a if player has the required money here """
	PlayerNode.health += 1
	print (PlayerNode.health)
	pass 

