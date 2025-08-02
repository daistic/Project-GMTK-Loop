class_name  LoopSkiil extends Node2D
@export var skill_name:Label
@export var cost_label:Label
@export var sprite:Sprite2D
var skill_scroll:SkillScore
var index
func update(skill,cost):
	print(index)
	skill_name.text=skill
	cost_label.text="mana cost : %d" % cost
func _on_add_up_pressed() -> void:
	skill_scroll.add_skill(index)
func _on_add_bottom_pressed() -> void:
	skill_scroll.add_skill(index+1)
func _on_delete_pressed() -> void:
	skill_scroll.delete(index)
func _on_move_down_pressed() -> void:
	skill_scroll.movedown(index)
func _on_move_up_pressed() -> void:
	skill_scroll.movedown(index)
func _on_edit_pressed() -> void:
	pass # Replace with function body.
