extends Skill

func setstart() -> void:
	skill_name = "ATK"

func activate():
	mana_cost = 10
	print (mana_cost)
	mana_cost = -5
	Global.enemy.take_damage(Chara.atk * 100)
