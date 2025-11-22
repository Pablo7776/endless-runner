@abstract class_name Personaje
extends CharacterBody2D

@export var vida: int = 1
@export var ataque: int = 1
@export var area_de_ataque: Area2D
@export var area_de_colision: CollisionShape2D


@abstract func atacar(objetivo)


@abstract func recibir_dano(dano)


@abstract func morir()

'''_vida:int
_ataque:int
_area_de_ataque: Area2D
_area_de_colision: ColisionShape
-------
 +Atacar():int
+Recibir_dano():void
+Morir():void '''
