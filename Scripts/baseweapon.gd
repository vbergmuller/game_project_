extends CharacterBody2D
class_name BaseWeapon

func lookat(sprite):
	look_at(get_global_mouse_position())
	
	if get_global_mouse_position().x < global_position.x:
		sprite.flip_v = true
	else:
		sprite.flip_v = false
	
