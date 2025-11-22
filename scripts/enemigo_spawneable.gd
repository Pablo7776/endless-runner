extends Personaje
class_name enemigo_spawneable
func _ready() -> void:
	area_de_ataque.body_entered.connect(_on_area_de_ataque_body_entered)

func atacar(objetivo: Personaje):
	objetivo.recibir_dano(ataque)
	pass

func _on_area_de_ataque_body_entered(body):
	if body.get_script() == preload("res://scripts/jugador.gd"):
		atacar(body)

func recibir_dano(dano):
	vida -= dano
	if vida <= 0:
		morir()


func morir():
	queue_free()
