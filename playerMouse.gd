extends Node2D
const UNIDADES = preload("res://UnidadesCombate.tres")
#script para controlar un personaje utilizando el mouse
#útil para hacer pruebas, más no para usar de manera final.
func _ready():
	UNIDADES.player = self
func _exit_tree():
	UNIDADES.player = null


func _physics_process(delta):
	var mousepos = get_global_mouse_position()
	position = mousepos
