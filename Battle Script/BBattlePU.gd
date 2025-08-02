extends CanvasItem
@export var GB:Node
var Characters:Array[Character]
@export var stat:Array[Label]
@export var skillscore:Array[SkillScore]
var format="ATK: %d \nDEF: %d \nHP: %d \nMana: %d"
func _enter_tree() -> void:
	GB.battle_popup.connect(_battle_popup)
	visible=false
func _ready() -> void:
	for a in skillscore.size():
		skillscore[a].chara=Characters[a]
		skillscore[a].add_skill(0)
func _battle_popup(chara):
	Characters=chara
	visible=true
	for a in stat.size():
		stat[a].text=format % [Characters[a].atk,Characters[a].def,Characters[a].hp,Characters[a].mana]
