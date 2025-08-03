extends Skill
func setstart() -> void:
	skill_name="ATK"
	mana_cost=5
func activate():
	Global.enemy.take_damage(Chara.atk*mana_cost*2,0)
	mana_change(mana_cost)
