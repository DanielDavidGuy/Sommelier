extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "tequila"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Tequila"
	localized_names = {}
	value = 2
	description = "<text_color_keyword>Adds<end> <icon_spirit> when <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [1]
	rarity = "uncommon"
	groups = ["anvillikes", "booze", "darkhumor", "food", "dwarflikes"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"tiles_to_add": [
				{"type": "spirit"},
			],
		}
	]