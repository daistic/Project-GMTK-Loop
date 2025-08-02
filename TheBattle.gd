extends Node
@export var chara_tex:Array[Texture2D]
@export var charas:Array[Character]
func _ready() -> void:
	Global.battle_start.connect(_battle_start)
func _battle_start(chara:Array[Character]):
	charas=chara.duplicate()
	for i in charas.size():
		chara_tex[i].set_texture(charas[i].texture)
	
