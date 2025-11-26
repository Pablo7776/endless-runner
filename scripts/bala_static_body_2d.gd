extends CharacterBody2D
class_name Bala

var direccion: float = 0.0
@export var velocidad: float = 500.0
@export var dano:int = 1
@export var area_dano:Area2D

###Acá estaría bueno que sea una lista y tener distintas balas, que cada una haga algo distinto###
###la lista de balas quedó en arma_tumbera_node_2d
func _ready():
	area_dano.body_entered.connect(hacer_dano)
	rotation = direccion
	destruir_en_iseg(1.5)
	##mostrar_velocidad() ##HerramientaDEV.

func _physics_process(delta):
	velocity = Vector2(velocidad, 0).rotated(direccion)
	move_and_slide()

func destruir_en_iseg(i:float):
	await get_tree().create_timer(i).timeout
	queue_free()

func hacer_dano(body):
	if body is enemigo_spawneable:
		body.recibir_dano(dano)
		queue_free()
	
func mostrar_velocidad():
	print("mi velocidad es: " + str(velocidad))
