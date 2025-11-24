extends CharacterBody2D

var direccion: float = 0.0
var velocidad: float = 500.0

###Acá estaría bueno que sea una lista y tener distintas balas, que cada una haga algo distinto###

func _ready():
	rotation = direccion

func _physics_process(delta):
	velocity = Vector2(velocidad, 0).rotated(direccion)
	move_and_slide()
