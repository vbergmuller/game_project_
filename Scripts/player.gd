extends BaseCharacter

var speed: int = 500

func _physics_process(_delta: float) -> void:
	get_input(speed, $AnimatedSprite2D)
