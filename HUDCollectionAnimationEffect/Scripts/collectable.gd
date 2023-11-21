extends Area2D

var hud_item = preload("res://Scenes/Objects/collectable_to_hud.tscn")
@onready var hud = get_node("/root/GameManager/HUD")
func _on_body_entered(_body):
	
	var instance = hud_item.instantiate()
	hud.add_child(instance)
	instance.global_position = $Sprite2D.get_global_transform_with_canvas().get_origin()
	instance.start_moving()
	queue_free()


