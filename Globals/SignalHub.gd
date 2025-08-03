extends Node

signal on_character_clicked(character: Character)
signal on_musume_clicked(character: Character)

func emit_on_character_clicked(character: Character) -> void:
	on_character_clicked.emit(character)

func emit_on_musume_clicked(character: Character) -> void:
	on_musume_clicked.emit(character)
