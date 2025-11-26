extends Objeto
class_name VidaExtra
@export var bono_vida:int

func _physics_process(delta: float) -> void:
	position.x -= velocidad * delta


func accion_sobre_jugador(body:Jugador):
	print("Te clavaste una zarpada inyección de vida extra!")
	body.vida += bono_vida


func _on_body_entered(body) -> void:
	if body is Personaje:
		accion_sobre_jugador(body)
		queue_free()
