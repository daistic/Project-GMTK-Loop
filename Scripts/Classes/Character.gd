class_name Character 
extends Node

enum TYPE {
	KNIGHT,
	MAGE,
	TANK
}

@export var Skills:Array[Skill]
@export var texture:Texture
var type: TYPE = TYPE.KNIGHT
var atk=1
var def=1
var hp=1
var mana=1
var agro=1
var cur_hp=1
var cur_mana=1
var tactic_loop:Array[int]
var c_skill=0
var alive=true
func _ready() -> void:
	pass
func add_skill(skill):
	Skills.push_back(skill.new())
	Skills[Skills.size()-1].Chara=self
func next_move():
	if c_skill>tactic_loop.size()-1:
		c_skill=0
	if cur_mana>Skills[tactic_loop[c_skill]].mana_cost:
		Skills[tactic_loop[c_skill]].activate()
	else:
		Skills[1].activate()
	c_skill+=1
	for a in Skills:
		a.moved()
func take_damage(amount,pen):
	cur_hp-=amount*10/(def*(1-pen/100)+10)
	if cur_hp>hp:
		cur_hp=hp
	if hp<0:
		alive=false
