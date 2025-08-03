extends VBoxContainer

@onready var label: Label = $HBoxContainer/Label

var total_character_types: int = Character.TYPE.size()
var current_type_index: int = 0

@export var selection_index: int = 0

func _on_left_button_pressed() -> void:
	current_type_index += -1
	
	if current_type_index < 0:
		current_type_index = total_character_types - 1
	
	Global.chara[selection_index].type = current_type_index

func _on_right_button_pressed() -> void:
	current_type_index += 1
	
	if current_type_index > total_character_types - 1:
		current_type_index = 0
	
	Global.chara[selection_index].type = current_type_index
