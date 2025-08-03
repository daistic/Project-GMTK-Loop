extends Skill
func setstart() -> void:
	skill_name="MageMind"
	mana_cost=10.2
func activate():
	mana_cost=Chara.cur_mana/10
	Global.enemy.take_damage(Chara.atk*mana_cost,0)
	mana_change(mana_cost)
