extends Node
signal force_skill_edit_reset()
var chara:Array[Character] = [
	Character.new(),
	Character.new(),
	Character.new()
]
var enemy=preload("res://Scenes/Dragon.tscn").instantiate()

signal battle_popup(charas:Array[Character])
func pop_up():
	battle_popup.emit(chara)
signal battle_start(charas:Array[Character],enemy:Enemy)
func  battle():
	battle_start.emit(chara,enemy)
signal battle_end(result:bool)

const ATK = preload("res://Scripts/Skills/Base/ATK.gd")
const WAIT = preload("res://Scripts/Skills/Base/Wait.gd")
const MageAtk = preload("res://Scripts/Skills/Mage/MageATK.gd")
const MageWait = preload("res://Scripts/Skills/Mage/MageWait.gd")

func skill_setup() -> void:
	for char in chara:
		if char.type == Character.TYPE.MAGE:
			char.add_skill(MageAtk)
			char.add_skill(MageWait)
		else:
			char.add_skill(ATK)
			char.add_skill(WAIT)
