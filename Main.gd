extends Node

var cab_state = null

func _ready():
	pass

func _process(delta):
	var cab_pics = $cabs/AnimatedSprite.frames.get_animation_names()
	var cab_idx = cab_state if cab_state != null else 6
	$cabs/AnimatedSprite.animation = cab_pics[cab_idx]

func cab_open(num):
	cab_state = num

func cab_close(num):
	if cab_state == num:
		cab_state = null
