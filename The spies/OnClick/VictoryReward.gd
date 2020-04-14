extends Label

func _reward():
	set_text("HP: " + str(PlayerNode.recent_reward))