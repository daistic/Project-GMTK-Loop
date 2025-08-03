extends Control

func _on_play_button_pressed() -> void:
	for char in Global.chara:
		print(char.type)
