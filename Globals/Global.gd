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
const SKnightSlash = preload("res://Scripts/Skills/Knight/SKnightSlash.gd")
const SKnightSpirit = preload("res://Scripts/Skills/Knight/SKnightSpirit.gd")
const SKnightThrust = preload("res://Scripts/Skills/Knight/SKnightThrust.gd")
const MageMight = preload("res://Scripts/Skills/Mage/MageMight.gd")
const MageMaxima = preload("res://Scripts/Skills/Mage/MageMaxima.gd")
const MageMind = preload("res://Scripts/Skills/Mage/MageMind.gd")
const Rejuvenate = preload("res://Scripts/Skills/Tank/Rejuvenate.gd")
const Taunt = preload("res://Scripts/Skills/Tank/Taunt.gd")
const Prepare = preload("res://Scripts/Skills/Tank/Prepare.gd")

func skill_setup() -> void:
	for char in chara:
		if char.type == Character.TYPE.MAGE:
			char.add_skill(MageAtk)
			char.add_skill(MageWait)
			char.add_skill(MageMight)
			char.add_skill(MageMaxima)
			char.add_skill(MageMind)
		elif char.type == Character.TYPE.KNIGHT:
			char.add_skill(ATK)
			char.add_skill(WAIT)
			char.add_skill(SKnightSlash)
			char.add_skill(SKnightSpirit)
			char.add_skill(SKnightThrust)
		elif char.type == Character.TYPE.TANK:
			char.add_skill(ATK)
			char.add_skill(WAIT)
			char.add_skill(Rejuvenate)
			char.add_skill(Prepare)
			char.add_skill(Taunt)
