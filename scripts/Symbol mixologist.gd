extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "mixologist"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Mixologist"
	localized_names = {}
	value = 2
	description = "Adjacent <group_booze> and <last_booze> permanently give <text_color_keyword><value_1>x<end> more <icon_coin>. This effect can only be applied once per symbol."
	localized_descriptions = {}
	values = [2]
	rarity = "rare"
	groups = ["human", "organism", "doglikes", "zlikes"]
	sfx = ["jump"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "booze"},
				{"a": {"starting_value": {"saved_values": {"value_num": 3}}}, "b": 0}
			],
			"value_to_change": "permanent_multiplier",
			"diff": values[0],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "bubbling",
			"one_time": true
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "booze"},
			], 
			"value_to_change": "saved_values",
			"value_num": 3,
			"diff": 1
		},
	]