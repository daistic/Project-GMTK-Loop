extends Node
@export var chara:Array[Character]
signal battle_popup(charas:Array[Character])
func pop_up():
	battle_popup.emit(chara)
func _ready() -> void:
	pop_up()
