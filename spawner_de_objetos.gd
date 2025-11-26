extends Node2D
class_name  SpawnerDeObjetos

var objetos = [
	[preload("res://escenas/Objetos/placa_antibalas.tscn"),2],
	[preload("res://escenas/Objetos/tubo_tumbero.tscn"),1],
	[preload("res://escenas/Objetos/vida_extra.tscn"),12]
	]

@export var tiempo_spawn := 1.2 
@export var posicion_spawn: Node2D

func _ready():
	spawn_loop()


func spawn_loop():
	while true:
		await get_tree().create_timer(tiempo_spawn).timeout
		spawnear_objeto()

func spawnear_objeto():
	var escena = objetos.pick_random()
	var inst = escena.instantiate()
	inst.global_position = posicion_spawn.global_position
	get_tree().current_scene.add_child(inst)
