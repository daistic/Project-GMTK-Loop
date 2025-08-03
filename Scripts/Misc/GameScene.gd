extends Control

@onready var hp_bar: TextureProgressBar = $HBoxContainer/GameSide/MarginContainer/VBoxContainer/HPContainer/HPBar
@onready var energy_bar: TextureProgressBar = $HBoxContainer/GameSide/MarginContainer/VBoxContainer/EnergyContainer/EnergyBar
@onready var musume_button: Array[TextureButton] = [
	$HBoxContainer/GameSide/MarginContainer/VBoxContainer/TrainContainer/ATKButton, 
	$HBoxContainer/GameSide/MarginContainer/VBoxContainer/TrainContainer/DEFButton, 
	$HBoxContainer/GameSide/MarginContainer/VBoxContainer/TrainContainer/HPButton, 
	$HBoxContainer/GameSide/MarginContainer/VBoxContainer/TrainContainer/MPButton,
	$HBoxContainer/GameSide/MarginContainer/VBoxContainer/HealContainer/HealButton, 
	$HBoxContainer/GameSide/MarginContainer/VBoxContainer/HealContainer/RestButton
]
@onready var stat_label: Label = $HBoxContainer/TextSide/MarginContainer/VBoxContainer/StatsRect/MarginContainer/ScrollContainer/StatLabel
@onready var story_label: Label = $HBoxContainer/TextSide/MarginContainer/VBoxContainer/StoryRect/MarginContainer/ScrollContainer/StoryLabel
@onready var battle_button: TextureButton = $HBoxContainer/TextSide/MarginContainer/VBoxContainer/BattleButton

var turns_left: int = 15

func _enter_tree() -> void:
	SignalHub.on_character_clicked.connect(_on_character_clicked)
	SignalHub.on_musume_clicked.connect(_on_musume_clicked)

func _ready() -> void:
	Global.skill_setup()

func _on_musume_clicked(character: Character) -> void:
	
	turns_left -= 1
	story_label.text = "%d turns left until battle" % turns_left
	
	stat_label.text = "HP:%d\nEN:%d\nATK:%d\nDEF:%d\nMANA:%d\n" % [
		character.cur_hp, character.energy, character.atk, character.def, character.mana
	]
	
	_update_bars(character)
	
	if turns_left <= 0:
		Global.pop_up()

func _on_character_clicked(character: Character) -> void:
	_update_bars(character)
	for buttons in musume_button:
		buttons.disabled = false
	stat_label.text = "HP:%d\nEN:%d\nATK:%d\nDEF:%d\nMANA:%d\n" % [
		character.cur_hp, character.energy, character.atk, character.def, character.mana
	]

func _update_bars(character: Character) -> void:
	hp_bar.value = character.cur_hp
	energy_bar.value = character.energy
