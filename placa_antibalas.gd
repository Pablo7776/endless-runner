extends Objeto
class_name PlacaAntibalas
var velocidad = 500
var vida_actual:int

func _physics_process(delta: float) -> void:
	position.x -= velocidad * delta

func __aparecer(lista_de_momentos) -> float:
	return randf()


func accion_sobre_jugador(body:Jugador):
	if body is Personaje:
		vida_actual = body.vida
		body.vida +=50
		await get_tree().create_timer(3).timeout
		body.vida = vida_actual


func _on_body_entered(body: Node) -> void:
	accion_sobre_jugador(body)
