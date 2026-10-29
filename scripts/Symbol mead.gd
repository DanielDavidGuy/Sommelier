extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "mead"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Mead"
	localized_names = {}
	value = 3
	description = "Permanently gives <icon_coin><color_FBF236><value_1><end> more for each adjacent <icon_honey> <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [2]
	rarity = "rare"
	groups = ["anvillikes", "booze", "darkhumor", "food", "scaler", "connlikes"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "honey"},
				{"a": "destroyed", "b": true},
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": values[0]
		},
	]