extends Skill
func setstart() -> void:
	mana_cost=-20
	skill_name="wait"
func activate():
	Chara.take_damage(Chara.cur_hp-Chara.hp/20,100)
