class_name Character 

extends Node

enum TYPE {
	KNIGHT,
	MAGE,
	TANKER
}

var atk: float = 1
var def: float = 1
var hp: float = 1
var mp: float = 1
var agro: float = 1
var tactic_loop: Array[int]

@export var type: TYPE = TYPE.KNIGHT
@export var Skills: Array[Skill]

func _ready() -> void:
	Skills.append_array(Global.BASE_SKILLS)

func add_skill(skill: Skill) -> void:
	Skills.insert(Skills.size() - 1, skill)
