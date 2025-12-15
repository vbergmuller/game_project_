extends CharacterBody2D
class_name BaseCharacter

func get_input(speed, animatedsprite):
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * speed
	move_and_slide()
	
	if velocity:
		animatedsprite.play("animation_movement")
	else:
		animatedsprite.play("animation_idle")
	
	if input_direction.x == 1:
		animatedsprite.flip_h = true
	elif input_direction.x == -1:
		animatedsprite.flip_h = false
