extends Bala
class_name BalaRapida

func _ready():
	area_dano.body_entered.connect(hacer_dano)
	rotation = direccion
	destruir_en_iseg(1.5)
	##mostrar_velocidad() ##HerramientaDEV.
