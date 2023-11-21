extends Sprite2D

@onready var hud_sprite = get_node("/root/GameManager/HUD/ItemTarget")
func start_moving():
	var target_pos = hud_sprite.position
	var tween = create_tween()
	tween.tween_property(self, "global_position", target_pos, 0.4)
	tween.tween_callback(move_done)
	

func move_done():
	Globals.add_item()
	queue_free() 



#.set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_CUBIC)
