extends Objeto
class_name TuboTumbero
@export var bono_ataque:int

func _physics_process(delta: float) -> void:
	position.x -= velocidad * delta


func accion_sobre_jugador(body:Jugador):
	print("Agarraste el tubo tubin y se lo pusiste a tu revolver tumbero")
	body.ataque += bono_ataque


func _on_body_entered(body) -> void:
	if body is Jugador:
		accion_sobre_jugador(body)
		queue_free()
