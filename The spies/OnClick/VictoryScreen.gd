extends Node2D

#Updates the displays for the reward when the scene is first loaded.
func _ready():
	get_node("VictoryReward").set_text("Reward: " + str(PlayerNode.recent_reward) + " coins")