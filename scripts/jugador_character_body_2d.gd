extends Personaje

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

##Las variables de vida, ataque, area_de_ataque y area_de_colision se pueden definir por inspector

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	$AnimationPlayer.play("camina")


func atacar(objetivo):
	if objetivo is Personaje:
		objetivo.recibir_dano(ataque)
	pass
	

func recibir_dano(dano):
	## esta condición es solo una prueba, para ver que muere
		vida -= dano
		print("Vida actual:", vida)

		if vida <= 0:
			morir()

func morir():
	print("El jugador ha muerto.")
	get_tree().paused = true
	queue_free()
