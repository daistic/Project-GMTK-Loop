extends Skill
var duration=3
var duration_left
func setstart() -> void:
	skill_name="KnightSpirit"
	mana_cost=10
func activate():
	if duration_left==0:
		Chara.atk*=1.3
		Chara.def/=1.3
	duration_left+=duration
	mana_change(mana_cost)
func moved():
	if duration_left>0:
		duration_left-=1
		if duration==0:
			Chara.atk/=1.3
			Chara.def*=1.3
