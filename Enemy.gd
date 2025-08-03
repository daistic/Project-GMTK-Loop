class_name Enemy
@export var texture:Texture2D
var hp=1
var atk=1
var def=1
var alive=true
func next_move():
	pass
func take_damage(amount,pen):
	hp-=amount/(def/(100-pen)+10)
	if hp<0:
		alive=false
