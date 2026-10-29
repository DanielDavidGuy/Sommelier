extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "vodka"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Vodka"
	localized_names = {}
	value = 2
	description = "When <text_color_keyword>destroyed<end>, adjacent <group_booze> and <last_booze> permanently give <icon_coin><color_FBF236><value_1><end> more."
	localized_descriptions = {}
	values = [1]	
	rarity = "uncommon"
	groups = ["anvillikes", "booze", "darkhumor", "dwarflikes", "food"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "booze"},
				{"a": "tbd", "b": true, "target_self": true}
			],
			"value_to_change": "permanent_bonus", 
			"diff": values[0]
		},
	]