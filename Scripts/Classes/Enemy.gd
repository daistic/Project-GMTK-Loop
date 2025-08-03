class_name Enemy
@export var texture:Texture2D
@export var hp=1
@export var atk=1
@export var def=1
var alive=true

func next_move():
	pass
func take_damage(amount: float, pen: float = 0):
	hp-=amount/(def*(1-pen/100)+10)
	if hp<0:
		alive=false
