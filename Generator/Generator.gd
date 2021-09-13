extends Node

var terrain_map: TileMap = null
var trees_TileMap: TileMap = null

func _ready():
	configurate_tilemaps()

#Generador de mapa con datos recibidos
func generador(map_receive):
	terrain_map.clear()
	var first_map = map_receive[0]
	for data in first_map:
		terrain_map.set_cellv(Vector2(data["Vector_X"],data["Vector_Y"]),data["Key"])
	var trees_map = map_receive[1]
	
	for data in trees_map:
		trees_TileMap.set_cellv(Vector2(data["Vector_X"],data["Vector_Y"]),data["Key"])



#Funcion que añade el mapa a el nodo 
func configurate_tilemaps() -> void:
	if terrain_map != null and trees_TileMap != null:
		return
	terrain_map = preload("res://Generator/IsometricTerrain.tscn").instance()
	trees_TileMap = preload("res://Generator/IsometricTreesTerrain.tscn").instance()
	add_child(terrain_map)
	add_child(trees_TileMap)

