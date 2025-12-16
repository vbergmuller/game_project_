extends BaseEnemy

var speed: int = -100

func _physics_process(_delta: float) -> void:
	follow_player(speed, $AnimatedSprite2D)
