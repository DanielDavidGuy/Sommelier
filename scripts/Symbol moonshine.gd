extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "moonshine"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Moonshine"
	localized_names = {}
	value = 4
	description = "Permanently gives <icon_coin><color_FBF236><value_1><end> more for each adjacent <icon_moon>."
	localized_descriptions = {}
	values = [1]
	rarity = "very_rare"
	groups = ["anvillikes", "booze", "darkhumor", "food", "connlikes", "night"]
	sfx = []
	effects = [
		{
			"forbidden_items": ["clear_sky"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "moon"},
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": values[0],
		},
		{
			"required_items": ["clear_sky"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "moon"},
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": values[0],
		},
	]