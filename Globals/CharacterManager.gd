extends Node

class Character_UI:
	var atlas_image: AtlasTexture
	var type_name: String

const KNIGHT_ATLAS: AtlasTexture = preload("res://Resources/CharacterAtlas/Knight.tres")
const MAGE_ATLAS: AtlasTexture = preload("res://Resources/CharacterAtlas/Mage.tres")
const TANK_ATLAS: AtlasTexture = preload("res://Resources/CharacterAtlas/Tank.tres")

func get_atlas_image(type: Character.TYPE) -> AtlasTexture:
	match type:
		Character.TYPE.KNIGHT:
			return KNIGHT_ATLAS
		Character.TYPE.MAGE:
			return MAGE_ATLAS
		Character.TYPE.TANK:
			return TANK_ATLAS
		_:
			return KNIGHT_ATLAS 
