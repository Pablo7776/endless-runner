extends Node2D
@export var plataformas: Array[PackedScene]
@onready var market: Marker2D = $Marker2D

func _on_timer_timeout() -> void:
	var random_plataforma: PackedScene = plataformas.pick_random()
	var random_plataforma_instanciada : Node = random_plataforma.instantiate()
	add_child(random_plataforma_instanciada)
	
	random_plataforma_instanciada.position = market.position
