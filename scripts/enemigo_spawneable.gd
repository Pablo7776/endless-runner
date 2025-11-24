extends Personaje
class_name enemigo_spawneable
var velocidad = 300

func _physics_process(delta: float) -> void:
	position.x -= velocidad * delta
	
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	move_and_slide()
	$AnimationPlayer.play("Idle")


func __aparecer(lista_de_momentos:Array):
	lista_de_momentos.shuffle()
	return lista_de_momentos.pop_back()

func _ready() -> void:
	area_de_ataque.body_entered.connect(_on_area_de_ataque_body_entered)
	$AnimationPlayer.play("Idle")

func atacar(objetivo: Personaje):
	$AnimationPlayer.play("Ataque")
	objetivo.recibir_dano(ataque)
	pass

func _on_area_de_ataque_body_entered(body):
	if body is Jugador:
		atacar(body)

func recibir_dano(dano):
	vida -= dano
	if vida <= 0:
		morir()

func morir():
	queue_free()
