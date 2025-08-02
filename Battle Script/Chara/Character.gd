class_name Character extends Sprite2D
@export var Skills:Array[Skill]
var type="normal"
var atk=1
var def=1
var hp=1
var mana=1
var agro=1
var tactic_loop:Array[int]
func _ready() -> void:
	pass
func add_skill(skill):
	Skills.insert(Skills.size()-1,skill)
