extends Node
var chara_tex:Array[Texture2D]
var charas:Array[Character]
var enemy_tex:Texture2D
var enemy:Enemy
var battling:bool
var ori_chara:Array[Character]
var delay=0.5
var wait=false
func _ready() -> void:
	Global.battle_start.connect(_battle_start)
func _process(delta: float) -> void:
	delay-=delta
	wait=delay<0
func chara_alive(chara):
	return chara.alive
func _battle_start(chara:Array[Character],ienemy):
	charas=chara.duplicate()
	ori_chara=chara
	for i in charas.size():
		chara_tex[i].set_texture(charas[i].texture)
	enemy=ienemy
	battling=true
	while battling:
		while wait:
			await get_tree().process_frame
		for a in chara:
			if a.alive:
				a.next_move()
		if enemy.alive:
			enemy.next_move()
			if chara.all(chara_alive):
				Global.battle_end.emit(false)
		else:
			battling=false
			Global.battle_end.emit(true)
	for a in ori_chara.size():
		ori_chara[a].hp=charas[a].hp
		ori_chara[a].alive=charas[a].alive
