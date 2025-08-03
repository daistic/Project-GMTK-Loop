extends TextureButton

@export var character_button_index: int = 0

func _ready() -> void:
	_change_image()

func _change_image() -> void:
	var atlas_image = CharacterManager.get_atlas_image(Global.chara[character_button_index].type)
	texture_normal = atlas_image

func _on_pressed() -> void:
	SignalHub.emit_on_character_clicked(Global.chara[character_button_index])
