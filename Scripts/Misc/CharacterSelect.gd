extends VBoxContainer

@onready var label: Label = $HBoxContainer/Label

var total_character_types: int = Character.TYPE.size()

@export var selection_index: int = 1

func _on_left_button_pressed() -> void:
	print()

func _on_right_button_pressed() -> void:
	pass # Replace with function body.
