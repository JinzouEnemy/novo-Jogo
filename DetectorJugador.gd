extends Area2D

var player = null
var posPlayer
func _on_DetectorJugador_body_entered(body):
	player = body
	posPlayer= player.global_position

func devolverpos():
	if player != null:
		return posPlayer
func _on_DetectorJugador_body_exited(body):
	player = null
