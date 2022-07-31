extends Node

signal machine_finished

var cab_state
var machine_sprite

func _ready():
	cab_state = null
	machine_sprite = $coffeemachine/AnimatedSprite

func _process(delta):
	var cab_pics = $cabs/AnimatedSprite.frames.get_animation_names()
	var cab_idx = cab_state if cab_state != null else 6
	$cabs/AnimatedSprite.animation = cab_pics[cab_idx]
	
	if machine_sprite.animation == "filling" and machine_sprite.frame == 26:
		emit_signal("machine_finished")
		machine_sprite.animation = "full"
		machine_sprite.playing = false

func cab_open(num):
	cab_state = num

func cab_close(num):
	if cab_state == num:
		cab_state = null

func coffeemachine_clicked(viewport, event, shape_idx):
	if not (event is InputEventMouseButton && event.pressed):
		return
	if machine_sprite.animation != "empty":
		return
	machine_sprite.animation = "filling"
	machine_sprite.playing = true

func _on_machine_finished():
	print("MACHINE FINISHED")
