extends TextureButton

enum ACTION {
	ATK_UP,
	DEF_UP,
	HP_UP,
	MP_UP,
	HEAL,
	REST
}

@export var button_action: ACTION

func _on_pressed() -> void:
	match button_action:
		ACTION.ATK_UP:
			print("ATK UP")
		ACTION.DEF_UP:
			print("DEF UP")
		ACTION.HP_UP:
			print("HP UP")
		ACTION.MP_UP:
			print("MP UP")
		ACTION.HEAL:
			print("HEAL")
		ACTION.REST:
			print("REST")
		_:
			print("null")
