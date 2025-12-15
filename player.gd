extends BaseCharacter

func _physics_process(_delta: float) -> void:
	get_input(400, $AnimatedSprite2D)
