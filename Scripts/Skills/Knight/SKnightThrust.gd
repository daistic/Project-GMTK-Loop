extends Skill
func _ready() -> void:
	skill_name="KnightSlash"
	mana_cost=15
func activate():
	Global.enemy.take_damage(Chara.atk*20,40)
	mana_change(mana_cost)
