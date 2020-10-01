extends KinematicBody2D

const UNIDADES = preload("res://UnidadesCombate.tres")
onready var detector = $DetectorJugador
var velocidad = 100
func _physics_process(delta):
	if detector.player != null:
		var direccion = (detector.devolverpos()-transform.origin)
		move_and_slide(direccion)
	
