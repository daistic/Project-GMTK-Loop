extends Node
@export var GB:Node
var Characters:Array[Character]
func _enter_tree() -> void:
	GB.battle_popup.connect(_battle_popup)
func _battle_popup(chara):
	Characters=chara
	for a in chara:
		print(a.type)
