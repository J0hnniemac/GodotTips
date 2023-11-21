extends TileMap

var collectable = preload("res://Scenes/Objects/collectable.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	replace_tile_with_object()
	
func replace_tile_with_object():
	var all_tiles = get_used_cells_by_id(0)
	for i in all_tiles:
		var data = get_cell_tile_data(0,i)
		if data:
			var tile_type = data.get_custom_data("tiletype")
			if tile_type == "collectable":
				print("found collectable")
				replace_tile_with_object_at(i,"collectable")
				
						
func replace_tile_with_object_at(pos,tiletype):
	erase_cell(0,pos)
	var world_position = map_to_local(pos)
	if tiletype == "collectable":
		var instance = collectable.instantiate()
		instance.global_position = world_position
		add_child(instance)


