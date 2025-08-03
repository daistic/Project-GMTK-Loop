extends CanvasItem
var Characters:Array[Character]
@export var stat:Array[Label]
@export var skillscore:Array[SkillScore]
@export var not_battle:CanvasItem
@export var battle:CanvasItem
var first=true
var format="ATK: %d \nDEF: %d \nHP: %d \nMana: %d"
func _enter_tree() -> void:
	Global.battle_popup.connect(_battle_popup)
	visible=false
func set_chara() -> void:
	for a in skillscore.size():
		skillscore[a].chara=Characters[a]
		skillscore[a].add_skill(0)
func _battle_popup(chara):
	Characters=chara
	if first:
		set_chara()
	not_battle.visible=false
	visible=true
	for a in stat.size():
		stat[a].text=format % [Characters[a].atk,Characters[a].def,Characters[a].hp,Characters[a].mana]
func _on_battle_button_pressed() -> void:
	for a in Characters.size():
		Characters[a].tactic_loop=skillscore[a].loop
	not_battle.visible=false
	battle.visible=true
	visible=false
	Global.battle()
