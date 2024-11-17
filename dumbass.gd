extends AnimatedSprite2D


func _unhandled_key_input(event: InputEvent) -> void:
	if event is InputEventKey:
		const keyMap = {
			KEY_Q: &"cock",
			KEY_W: &"break",
			KEY_E: &"loadlive",
			KEY_R: &"loadblank",
			KEY_T: &"uncock",
			KEY_Y: &"firelive",
			KEY_U: &"fireblank"
		}
		
		if event.keycode in keyMap:
			play(keyMap[event.keycode])
		
		if event.pressed:
			if event.keycode == KEY_1:
				get_node("../P1").frame += 1
			if event.keycode == KEY_2:
				get_node("../P2").frame += 1
			if event.keycode == KEY_UP:
				get_node("../AnimationPlayer").play(&"enterbattle")
			if event.keycode == KEY_DOWN:
				get_node("../AnimationPlayer").play(&"exitbattle")
			if event.keycode == KEY_RIGHT:
				get_node("../AnimationPlayer").play(&"dryspin")
