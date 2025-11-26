extends Node2D
class_name bala

var balas = [
	preload("res://escenas/balaHija_lenta.tscn"),
	preload("res://escenas/balaHija_rapida.tscn"),
	preload("res://escenas/bala_static_body_2d.tscn")
]

func _physics_process(delta):
	look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("mouse_left"):
		disparar()
		
func disparar():
	var escena_bala = balas.pick_random()
	var nuevaBala = escena_bala.instantiate()
	nuevaBala.direccion = rotation
	nuevaBala.global_position = $spawner.global_position
	get_tree().current_scene.add_child(nuevaBala)
	
func hacer_daño():
	pass
