extends Node


func _ready():
	pass

func cab_open(num):
	print("IN ", num)
	var cab_frames = $cabs/AnimatedSprite.frames.get_animation_names()
	$cabs/AnimatedSprite.animation = cab_frames[num]

func cab_close():
	print("OUT")
	var cab_frames = $cabs/AnimatedSprite.frames.get_animation_names()
	$cabs/AnimatedSprite.animation = cab_frames[6]
