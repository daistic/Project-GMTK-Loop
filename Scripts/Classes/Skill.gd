class_name Skill 

extends Node

@export var Chara: Character

var skill_name: String = ""
var mana_cost: float = 0
var req_atk: float = 0
var req_def: float = 0
var req_hp: float = 0

func activate():
	print(mana_cost)
