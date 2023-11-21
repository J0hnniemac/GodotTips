extends Node2D

var item_count
func _ready():
	item_count = 0;
	
	
	
func add_item():
	item_count = item_count + 1
	var item_count_label = get_node("/root/GameManager/HUD/ItemCount")
	item_count_label.text = str(item_count)

