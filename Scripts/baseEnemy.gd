extends CharacterBody2D
class_name BaseEnemy

func follow_player(speed, animatedsprite):
	var player = get_tree().current_scene.get_node("Player")
	var direction = (player.global_position - global_position).normalized()
	velocity = direction * speed
	move_and_slide()
	
	if velocity:
		animatedsprite.play("animation_movement")
		animatedsprite.speed_scale = speed / 85 # w speed
	else:
		animatedsprite.play("animation_idle")
	
	if direction.x > 0:
		animatedsprite.flip_h = true
	elif direction.x < 0:
		animatedsprite.flip_h = false
