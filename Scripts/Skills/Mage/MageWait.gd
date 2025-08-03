extends Skill
func _ready() -> void:
	mana_cost=-10
	skill_name="wait"
func activate():
	mana_cost=(Chara.mana-Chara.cur_mana)/10
	Chara.take_damage(Chara.hp-Chara.cur_hp/40,100)
	mana_change(mana_cost)
