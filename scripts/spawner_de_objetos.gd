extends Node2D
class_name  SpawnerDeObjetos

var objetos = [
	preload("res://escenas/Objetos/placa_antibalas.tscn"),
	preload("res://escenas/Objetos/tubo_tumbero.tscn"),
	preload("res://escenas/Objetos/vida_extra.tscn"),
	preload("res://escenas/enemigo_spawneable1.tscn")
	]

@export var tiempo_spawn := 5 
@export var posicion_spawn: Node2D

func _ready():
	esperar_para_spawn()


func esperar_para_spawn():
	while true:
		await get_tree().create_timer(tiempo_spawn).timeout
		spawnear_objeto()

func spawnear_objeto():
	var escena = objetos.pick_random()
	var inst = escena.instantiate()
	inst.global_position = posicion_spawn.global_position
	get_tree().current_scene.add_child(inst)
