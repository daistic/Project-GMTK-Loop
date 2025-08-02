extends Node
signal force_skill_edit_reset()
var chara:Array[Character]
signal battle_popup(charas:Array[Character])
func pop_up():
	battle_popup.emit(chara)
signal battle_start(charas:Array[Character])
func  battle():
	battle_start.emit(chara)
