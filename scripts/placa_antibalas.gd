extends Objeto
class_name PlacaAntibalas

var vida_actual:int

func _physics_process(delta: float) -> void:
	position.x -= velocidad * delta


func accion_sobre_jugador(body:Jugador):
	vida_actual = body.vida
	body.vida +=50
	print("Te calzaste la plaquita como armadura, se desgasta rápido")
	await get_tree().create_timer(3).timeout
	body.vida = vida_actual


func _on_body_entered(body) -> void:
	if body is Personaje:
		accion_sobre_jugador(body)
		queue_free()
