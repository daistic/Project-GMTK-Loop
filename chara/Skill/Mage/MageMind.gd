extends Skill
func _ready() -> void:
	skill_name="ATK"
	mana_cost=-15
func activate():
	Global.enemy.take_damage(Chara.atk*10,0)
	mana_change(mana_cost)
