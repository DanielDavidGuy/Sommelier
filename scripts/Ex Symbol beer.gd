extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "beer"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	display_name = "Beer"
	localized_names = {}
	value = 1
	description = "When <text_color_keyword>destroyed<end>, adjacent <group_booze> and <last_booze> give <icon_coin><color_FBF236>1<end> more."
	localized_descriptions = {}
	values = [1]	
	rarity = "common"
	groups = ["trash"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "booze"},
				{"a": "tbd", "b": true, "target_self": true}
			],
			"value_to_change": "value_bonus", 
			"diff": 1
		},
	]