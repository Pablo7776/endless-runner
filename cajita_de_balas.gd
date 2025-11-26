extends Objeto
class_name CajitaDeBalas

func _physics_process(delta: float) -> void:
	position.x -= velocidad * delta


func accion_sobre_jugador(body:Jugador):
	print("Balitaaaaas")
	body.get_node("arma_spawner_Node2D").recargar()


func _on_body_entered(body) -> void:
	if body is Jugador:
		accion_sobre_jugador(body)
		queue_free()
