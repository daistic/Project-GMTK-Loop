extends Node
signal force_skill_edit_reset()
var chara:Array[Character] = [
	Character.new(),
	Character.new(),
	Character.new()
]
var enemy:Enemy
signal battle_popup(charas:Array[Character])
func pop_up():
	battle_popup.emit(chara)
signal battle_start(charas:Array[Character],enemy:Enemy)
func  battle():
	battle_start.emit(chara)
signal battle_end(result:bool)
