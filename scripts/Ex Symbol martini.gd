extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "martini"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	display_name = "Martini"
	localized_names = {}
	value = 3
	description = "Permanently gives <icon_coin><color_FBF236>1<end> more for each adjacent <group_booze> or <last_booze> <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [1]	
	rarity = "rare"
	groups = ["connlikes", "scaler"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "booze"},
				{"a": "destroyed", "b": true}
			],
			"target_self": true,
			"value_to_change": "permanent_bonus", 
			"diff": 1
		},
	]