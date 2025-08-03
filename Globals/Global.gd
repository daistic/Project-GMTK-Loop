extends Node

var BASE_SKILLS: Array[Skill] = [
	preload("res://Scripts/Skills/Base/ATK.gd").new(),
	preload("res://Scripts/Skills/Base/Wait.gd").new()
]

var KNIGHT_SKILLS: Array[Skill] = [
	preload("res://Scripts/Skills/Knight/BulkUp.gd").new(),
	preload("res://Scripts/Skills/Knight/ForTheKingdom.gd").new(),
	preload("res://Scripts/Skills/Knight/PowerfulSlash.gd").new()
]

var MAGE_SKILLS: Array[Skill] = [
	preload("res://Scripts/Skills/Mage/CosmicPower.gd").new(),
	preload("res://Scripts/Skills/Mage/Fireball.gd").new(),
	preload("res://Scripts/Skills/Mage/Foresight.gd").new()
]

var TANK_SKILLS: Array[Skill] = [
	preload("res://Scripts/Skills/Tank/Prepare.gd").new(),
	preload("res://Scripts/Skills/Tank/Rejuvenate.gd").new(),
	preload("res://Scripts/Skills/Tank/Taunt.gd").new()
]
