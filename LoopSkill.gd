class_name  LoopSkiil extends Node
@export var skill_name:Label
@export var cost_label:Label
@export var SEreso:Resource
@export var container:Container
@export var ctrl:CanvasItem
@export var ctrl1:CanvasItem
var has_ins=false
var skill_scroll:SkillScore
var chara:Character
var index
func _ready() -> void:
	Global.force_skill_edit_reset.connect(force_edit_reset)
func update(skill,cost):
	skill_name.text=skill
	if cost>0:
		cost_label.text="mana cost : %d" % cost
	else:
		cost_label.text="mana gain : %d" % -cost
func _on_add_up_pressed() -> void:
	skill_scroll.add_skill(index)
func _on_add_down_pressed() -> void:
	skill_scroll.add_skill(index+1)
func _on_delete_pressed() -> void:
	skill_scroll.delete(index)
func _on_move_down_pressed() -> void:
	skill_scroll.movedown(index)
func _on_move_up_pressed() -> void:
	skill_scroll.moveup(index)
func _on_edit_pressed() -> void:
	ctrl.visible=false
	ctrl1.visible=true
	if not has_ins:
		for i in chara.Skills.size():
			var newone=SEreso.instantiate()
			newone.update(chara.Skills[i].skill_name,chara.Skills[i].mana_cost,self,i)
			container.add_child(newone)
		has_ins=true
func edit(id):
	skill_scroll.change(index,id)
	_on_edit1_pressed()
func _on_edit1_pressed() -> void:
	ctrl.visible=true
	ctrl1.visible=false
func force_edit_reset():
	has_ins=false
	for child in container.get_children():
		child.queue_free()
