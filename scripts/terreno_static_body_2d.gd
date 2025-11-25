extends StaticBody2D

var velocidad = 400

func _physics_process(delta: float) -> void:
	position.x -= velocidad * delta
