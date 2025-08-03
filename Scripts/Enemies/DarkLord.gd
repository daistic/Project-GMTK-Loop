extends Enemy
var bounce:Array[int]=[0,1,1,2,3,1]
func next_move():
	var agros:Array[int]
	for a in Global.chara.size():
		for b in Global.chara[a].agro:
			agros.push_back(a)
	for a in bounce.pick_random():
		Global.chara[agros.pick_random()].take_damage(atk*5,0)
