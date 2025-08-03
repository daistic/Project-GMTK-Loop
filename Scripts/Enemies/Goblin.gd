extends Enemy
func next_move():
	var agros:Array[int]
	for a in Global.chara.size():
		for b in Global.chara[a].agro:
			agros.push_back(a)
	Global.chara[agros.pick_random()].take_damage(atk*5,0)
