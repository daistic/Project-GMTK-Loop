extends Skill
func _ready() -> void:
	mana_cost=-20
	skill_name="wait"
func activate():
	Chara.take_damage(Chara.cur_hp-Chara.hp/20,100)
