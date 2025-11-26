extends Node2D
class_name bala

var pila_balas: Array[PackedScene] = [
	preload("res://escenas/balaHija_lenta.tscn"),
	preload("res://escenas/balaHija_rapida.tscn"),
	preload("res://escenas/bala_static_body_2d.tscn")
]
var pila_inicial: Array[PackedScene]   # <-- guardar la copia

func _physics_process(delta):
	look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("mouse_left"):
		disparar()
	if Input.is_action_just_pressed("mouse_rigth"):
		recargar()

func _ready():
	pila_inicial = pila_balas.duplicate()
	MostrarLista()
	
func disparar():
	if pila_balas.is_empty():
		print("La pila está vacía, no hay más balas.")
		return
	
	var escena_bala = pila_balas.pop_back()  # POP real
	var nueva_bala = escena_bala.instantiate()
	
	nueva_bala.direccion = rotation
	nueva_bala.global_position = $spawner.global_position
	get_tree().current_scene.add_child(nueva_bala)

	print("Disparé una bala. Pila restante: ", pila_balas.size())

	
func recargar():
	pila_balas = pila_inicial.duplicate()
	print("Recargado! Balas disponibles:", pila_balas.size())

func hacer_daño():
	pass

func MostrarLista():
	print("Contenido de la pila:")
	for b in pila_balas:
		print(b)
