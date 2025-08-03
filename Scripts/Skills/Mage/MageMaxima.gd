extends Skill
func setstart() -> void:
	skill_name="MageMaxima"
	mana_cost=50.2
func activate():
	Global.enemy.take_damage(Chara.atk*mana_cost*1.5,30)
	mana_change(mana_cost)
