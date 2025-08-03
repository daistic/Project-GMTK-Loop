extends Skill
func setstart() -> void:
	skill_name="MageMight"
	mana_cost=20
func activate():
	Global.enemy.take_damage(Chara.atk*mana_cost*1.5,0)
	mana_change(mana_cost)
