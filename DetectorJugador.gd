extends Area2D
#Hice una escena aparte para dejar un detector generico del
# player, usar solo cuando se necesite detectar al jugador.

#zona declaración de variables
var player = null #un valor nulo, sirve para controlar que no tenga nada más asignado antes
var posPlayer #por ahora solo posee "basura" por lo que no es utilizable

#esta función se "activa" al momento de entrar un cuerpo al area de detección
func _on_DetectorJugador_body_entered(body):
	player = body #conectamos nuestra variable generica player con el player real.
	posPlayer= player.global_position #guardamos la pos al momento de entrar.

#cree esta función para que me devuelva un valor, en este caso el valor va a ser la pos del jugador.
func devolverpos():
	if player != null: #revisa si el player hizo contacto.
		return posPlayer #el valor que quiero que me retorne al invocar la función. En este caso una pos.

#cuando el player sale del area vuelve a colocar la variable en null.
func _on_DetectorJugador_body_exited(body):
	player = null
