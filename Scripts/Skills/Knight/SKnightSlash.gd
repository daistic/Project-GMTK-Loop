extends Skill
func setstart() -> void:
	skill_name="KnightSlash"
	mana_cost=10
func activate():
	Global.enemy.take_damage(Chara.atk*20,0)
	mana_change(mana_cost)
