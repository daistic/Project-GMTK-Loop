class_name SkillEdit extends Node
var id
@export var skill_name:Label
@export var cost_label:Label
var lskill:LoopSkiil
func update(skill,cost,loopskill,sid):
	id=sid
	lskill=loopskill
	skill_name.text=skill
	if cost>0:
		cost_label.text="mana cost : %d" % cost
	else:
		cost_label.text="mana gain : %d" % -cost
func _on_pressed() -> void:
	lskill.edit(id)
