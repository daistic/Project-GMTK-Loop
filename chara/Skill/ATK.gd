extends Skill
func _ready() -> void:
	skill_name="ATK"
	mana_cost=-5
func activate():
	Global.enemy.take_damage(Chara.atk*100)
