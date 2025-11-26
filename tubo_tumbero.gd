extends Objeto
class_name TuboTumbero
var velocidad = 300

func _physics_process(delta: float) -> void:
	position.x -= velocidad * delta

func __aparecer(lista_de_momentos) -> float:
	return randf()


func accion_sobre_jugador(body:Jugador):
	if body is Personaje:
		body.ataque +=1


func _on_body_entered(body: Node) -> void:
	accion_sobre_jugador(body)
	queue_free()
