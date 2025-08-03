class_name Skill extends Node
@export var Chara:Character
var skill_name="no Name"
var mana_cost=0
var req_atk=1
var req_def=1
var req_hp=1
func activate():
	pass
func moved():
	pass
func mana_change(mana_cost):
	Chara.cur_mana-=mana_cost
	if Chara.cur_mana>Chara.mana:
		Chara.cur_mana=Chara.mana
