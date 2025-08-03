class_name Character 
extends Node
@export var Skills:Array[Skill]
@export var texture:Texture
var type="normal"
var atk=1
var def=1
var hp=1
var mana=1
var agro=1
var cur_hp=1
var cur_mana=1
var tactic_loop:Array[int]
var alive=true
func _ready() -> void:
	pass
func add_skill(skill):
	Skills.push_back(skill.new())
	Skills[Skills.size()-1].Chara=self
func next_move():
	pass
func take_damage(amount,pen):
	pass
