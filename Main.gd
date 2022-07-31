extends Node

var cab_state = null

func _ready():
	pass
	
func _process(delta):
	var cab_frames = $cabs/AnimatedSprite.frames.get_animation_names()
	if cab_state != null:
		$cabs/AnimatedSprite.animation = cab_frames[cab_state]
	else:
		$cabs/AnimatedSprite.animation = cab_frames[6]

func cab_open(num):
	print("IN ", num)
	cab_state = num

func cab_close(num):
	print("OUT ", num)
	if cab_state == num:
		cab_state = null
