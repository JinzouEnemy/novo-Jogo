extends KinematicBody2D

const UNIDADES = preload("res://UnidadesCombate.tres")

#zona de declaración de variables
onready var detector = $DetectorJugador
var velocidad = 100

#la función process(delta) se evalua en cada frame del juego.
func _physics_process(delta):
	if detector.player != null:
		var direccion = (detector.devolverpos()-transform.origin)
		move_and_slide(direccion)
