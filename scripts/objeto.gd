@abstract class_name Objeto
extends Node2D

var area_de_colision:CollisionShape2D
var velocidad:int = 450

@abstract func accion_sobre_jugador(body:Jugador)
