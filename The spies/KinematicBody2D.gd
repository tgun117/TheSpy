extends KinematicBody2D

const UP = Vector2(0,-1)
const GRAVITY = 30
const SPEED = 300
const JUMP_HEIGHT = -670

var motion = Vector2()
var health = 5

func _physics_process(delta):
	motion.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
	else:
		motion.x =0
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
	
	motion = move_and_slide(motion, UP)
	_update_hp()
	_update_sprite()
	pass

func _update_hp():
	health = PlayerNode.health
	get_node("Camera2D/Label").set_text("HP: " + str(health))
	
func _update_sprite():
	var localsprite = get_node("/root/PlayerNode/Sprite").get_texture()
	get_node("Sprite").set_texture(localsprite)
	