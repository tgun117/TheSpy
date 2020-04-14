extends Button

const cost = 25

func _pressed():
	if PlayerNode.coins >= cost:
		PlayerNode.coins -= cost
		PlayerNode.health += 1
		print (PlayerNode.health)
		pass 

