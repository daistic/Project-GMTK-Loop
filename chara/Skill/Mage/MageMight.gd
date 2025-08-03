extends Skill
func _ready() -> void:
	skill_name="Mage Might"
	mana_cost=-10
func activate():
	mana_cost= Chara.mana/10
	Global.enemy.take_damage(Chara.atk*mana_cost,0)
	mana_change(mana_cost)
