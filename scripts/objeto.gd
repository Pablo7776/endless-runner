@abstract class_name Objeto
extends IAparecible

var __momento_de_aparicion:float
var area_de_colision:Area2D

@abstract func __aparecer(lista_de_momentos) -> float
@abstract func accion_sobre_jugador(body:Jugador)


'''Objeto(Ubicable)
_area_de_colision: Area2D 
_posicion_fija:parordenado
--------
-ubicar (lista_de_ubicaciones): parordenado'''
