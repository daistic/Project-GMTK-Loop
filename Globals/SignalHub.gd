extends Node

signal on_character_clicked(character: Character)
signal on_musume_clicked()

func emit_on_character_clicked(character: Character) -> void:
	on_character_clicked.emit(character)

func emit_on_musume_clicked() -> void:
	on_musume_clicked.emit()
