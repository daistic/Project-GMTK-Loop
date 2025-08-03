class_name SkillScore extends Node
var chara:Character
@export var LSkill:Resource
@export var container:Container
var SkillLoop:Array[LoopSkiil]
var loop:Array[int]
func add_skill(index):
	loop.insert(index,0)
	update()
func change(index,to):
	loop[index]=to
	update()
func delete(index):
	if loop.size()>1 and index<loop.size():
		loop.remove_at(index)
		SkillLoop[index].visible=false	
		SkillLoop.remove_at(index)
	update()
func moveup(index):
	if index==0:
		pass
	else:
		var temp=loop[index]
		loop[index]=loop[index-1]
		loop[index-1]=temp
	update()
func movedown(index):
	if index==loop.size()-1:
		pass
	else:
		var temp=loop[index+1]
		loop[index+1]=loop[index]
		loop[index]=temp
	update()
func update():
	if loop.size()>SkillLoop.size():
		for a in loop.size()-SkillLoop.size():
			var newone=LSkill.instantiate()
			container.add_child(newone)
			SkillLoop.push_back(newone)
	for s in SkillLoop.size():
		SkillLoop[s].index=s
		SkillLoop[s].skill_scroll=self
		SkillLoop[s].chara=chara
		SkillLoop[s].update(chara.Skills[loop[s]].skill_name,chara.Skills[loop[s]].mana_cost)
	
