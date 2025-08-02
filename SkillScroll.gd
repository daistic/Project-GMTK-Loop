class_name SkillScore extends Node2D
var chara:Character
@export var LSkill:Resource
@export var view_port:SubViewport
var SkillLoop:Array[LoopSkiil]
var loop:Array[int]
var width
var lenght
var to_scale
func _ready() -> void:
	var SLscale:LoopSkiil=LSkill.instantiate()
	width = SLscale.sprite.texture.get_width() * SLscale.sprite.scale.x
	lenght = SLscale.sprite.texture.get_height() * SLscale.sprite.scale.y
	to_scale=view_port.size.x/width

func add_skill(index):
	loop.insert(index,0)
	update()
func change(index,to):
	loop[index]=to
	update()
func delete(index):
	if loop.size()>1 and SkillLoop.size()>1:
		loop.remove_at(index)
		SkillLoop.remove_at(index)
	update()
func moveup(index):
	if index==0:
		pass
	else:
		loop[index]=loop[index-1]
func movedown(index):
	if index==loop.size():
		pass
	else:
		loop[index-1]=loop[index]
func update():
	if loop.size()>SkillLoop.size():
		for a in loop.size()-SkillLoop.size():
			var newone=LSkill.instantiate()
			view_port.add_child(newone)
			SkillLoop.push_back(newone)
			newone.scale.x*=to_scale
			newone.scale.y*=to_scale
			SkillLoop[SkillLoop.size()-1].position.y=(SkillLoop.size()-1)*(lenght+3)
	view_port.size.y=loop.size()*(lenght+3)
	for s in SkillLoop.size():
		SkillLoop[s].index=s
		SkillLoop[s].skill_scroll=self
		SkillLoop[s].update(chara.Skills[loop[s]].skill_name,chara.Skills[loop[s]].mana_cost)
