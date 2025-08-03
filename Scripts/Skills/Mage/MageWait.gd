extends Skill
func setstart() -> void:
	mana_cost=-10.1
	skill_name="wait"
func activate():
	mana_cost=(Chara.mana-Chara.cur_mana)/10
	Chara.take_damage(Chara.cur_hp-Chara.hp/40,100)
	mana_change(mana_cost)
