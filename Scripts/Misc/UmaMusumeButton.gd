extends TextureButton

enum ACTION {
	ATK_UP,
	DEF_UP,
	HP_UP,
	MP_UP,
	HEAL,
	REST
}

var character: Character = Global.chara[0]

@export var button_action: ACTION

var turns_left: int = 15

func _enter_tree() -> void:
	SignalHub.on_character_clicked.connect(_on_character_clicked)

func _on_character_clicked(_character: Character) -> void:
	character = _character

func check_energy(energy_cost: int) -> bool :
	if (character.energy - energy_cost) >= 0:
		character.energy -= energy_cost
		return true
	else:
		return false

func _on_pressed() -> void:
	match button_action:
		ACTION.ATK_UP:
			print("ATK UP")
			if !check_energy(10):
				return
			character.atk += 1
		ACTION.DEF_UP:
			print("DEF UP")
			if !check_energy(10):
				return
			character.def += 1
		ACTION.HP_UP:
			print("HP UP")
			if !check_energy(10):
				return
			character.hp += 10
		ACTION.MP_UP:
			print("MP UP")
			if !check_energy(10):
				return
			character.mana += 1
		ACTION.HEAL:
			print("HEAL")
			character.energy += 10
			character.take_damage(-100, 100)
		ACTION.REST:
			print("REST")
			character.energy += 35
		_:
			print("null")
	SignalHub.emit_on_musume_clicked(character)
