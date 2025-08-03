extends VBoxContainer

@onready var label: Label = $HBoxContainer/Label
@onready var chara_rect: TextureRect = $CharaRect

var total_character_types: int = Character.TYPE.size()
var current_type: Character.TYPE = Character.TYPE.KNIGHT

@export var selection_index: int = 0

func _ready() -> void:
	type_changed()

func type_changed() -> void:
	match current_type:
		Character.TYPE.KNIGHT:
			_update_uis(CharacterManager.KNIGHT_ATLAS, "Knight")
		Character.TYPE.MAGE:
			_update_uis(CharacterManager.MAGE_ATLAS, "Mage")
		Character.TYPE.TANK:
			_update_uis(CharacterManager.TANK_ATLAS, "Tank")
		_:
			pass

func _update_uis(atlas: AtlasTexture, type_name: String) -> void:
	label.text = type_name
	chara_rect.texture = atlas

func _on_left_button_pressed() -> void:
	current_type += -1
	
	if current_type < 0:
		current_type = total_character_types - 1
	
	Global.chara[selection_index].type = current_type
	type_changed()

func _on_right_button_pressed() -> void:
	current_type += 1
	
	if current_type > total_character_types - 1:
		current_type = 0
	
	Global.chara[selection_index].type = current_type
	type_changed()
