extends Node


onready var generator_node = get_tree().get_root().get_node("Server/Generator")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


remote func receiverMap(map):
	print(map,'map')
	if(map):
		generator_node.generador(map)
