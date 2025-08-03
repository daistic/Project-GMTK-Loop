extends Skill

func _ready() -> void:
<<<<<<<< HEAD:Scripts/Skills/Base/ATK.gd
	skill_name = "ATK"

func activate():
	mana_cost = 10
	print (mana_cost)
========
	skill_name="ATK"
	mana_cost=-5
func activate():
	Global.enemy.take_damage(Chara.atk*100)
>>>>>>>> origin/battle:chara/Skill/ATK.gd
