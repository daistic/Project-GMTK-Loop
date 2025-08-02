class_name Character 

extends Sprite2D

@export var Skills:Array[Skill]
var type="normal"
var atk=1
var def=1
var hp=1
var mana=1
var skill1
var tactic_loop:Array[int]
var tactic_type:Array[int]

func _ready() -> void:
	pass

func _add_skill(skill: Skill) -> void:
	skill1 = Skill

func _skill_1() -> void:
	skill1.activate()
