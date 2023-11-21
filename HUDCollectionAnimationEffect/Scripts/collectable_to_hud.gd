extends Sprite2D


@onready var hud_sprite = get_node("/root/GameManager/Hud/Sprite2D")

func start_moving():
	var target_position = hud_sprite.position
	var tween = create_tween()
	tween.tween_property(self,"global_position", target_position,0.4)
	tween.tween_callback(move_done)
func move_done():
	Globals.add_item()
	queue_free()
	
	
