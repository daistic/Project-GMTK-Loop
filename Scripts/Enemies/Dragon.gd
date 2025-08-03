extends Enemy
var bounce:Array[int]=[3,3,2,1,1,]
func setstart():
	atk=10
	hp=300
	def=20
func next_move():
	var agros:Array[int]
	for a in Global.chara.size():
		for b in Global.chara[a].agro:
			agros.push_back(a)
	for a in bounce.pick_random():
		Global.chara[agros.pick_random()].take_damage(atk*5,0)
func take_damage(amount: float, pen: float = 0):
	hp-=amount/(def*(1-pen/100)+10)
	if hp<0:
		alive=false
