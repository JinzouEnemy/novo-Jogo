extends Node
class_name StateMachine

var state = null setget set_state
var previousState = null
var states = {}

onready var parent = get_parent()

func _physics_process(delta):
	if state != null:
		procesar_logica(delta)
		var transition = get_transition(delta)
		if transition != null:
			set_state(transition)
	pass

func procesar_logica(delta):
	pass

func get_transition(delta):
	return null

func enter_state(newState,oldState):
	pass
func exit_state(oldState,newState):
	pass

func set_state(newState):
	previousState = state
	state = newState
	if previousState != null:
		exit_state(previousState,newState)
	if newState != null:
		enter_state(newState,previousState)
func add_state(nombreState):
	states[nombreState]=states.size()
	
