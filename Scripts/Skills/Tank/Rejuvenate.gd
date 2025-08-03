extends Skill
func _ready() -> void:
	mana_cost=10
	skill_name="Rejuvinate"
func activate():
	Chara.take_damage(Chara.hp/10,100)
