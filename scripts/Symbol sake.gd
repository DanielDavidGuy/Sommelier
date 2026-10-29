extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "sake"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Sake"
	localized_names = {}
	value = 2
	description = "When <text_color_keyword>destroyed<end>, you are <text_color_keyword><value_1>x<end> more likely to find <text_color_uncommon>Uncommon<end>, <text_color_rare>Rare<end>, and <text_color_very_rare>Very Rare<end> symbols at the end of this spin."
	localized_descriptions = {}
	values = [3]
	rarity = "uncommon"
	groups = ["anvillikes", "booze", "darkhumor", "dwarflikes", "food", "rarity_mod"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": "destroyed", "b": true},
			],
			"rarity_mod": {"symbols": [{"uncommon": values[0]}, {"rare": values[0]}, {"very_rare": values[0]}]}
		},
	]