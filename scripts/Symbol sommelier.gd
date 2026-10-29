extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "sommelier"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Sommelier"
	localized_names = {}
	value = 3
	description = "<text_color_keyword>Destroys<end> adjacent <group_booze> and <last_booze> if they have given <icon_coin> <text_color_keyword><value_2><end> or more times. Gives <icon_coin> equal to <text_color_keyword><value_1>x<end> the value of adjacent <text_color_keyword>destroyed<end> <group_booze> and <last_booze>."
	localized_descriptions = {}
	values = [15, 8]
	rarity = "rare"
	groups = ["human", "organism", "doglikes", "zlikes", "newsworthy", "scaler"]
	sfx = ["jump"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "booze"},
				{"a": {"starting_value": values[1], "var_math": [
					{"-": "times_coins_given"},
					{"-": {"var_math": [
						{"+": {"counted_items": "cellar"}},
						{"*": 4}
					]}}
				]}, "b": 0, "less_than_eq": true}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "drink"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "booze"},
				{"a": "destroyed", "b": true},
			], 
			"target_self": true, 
			"value_to_change": "value_bonus", 
			"diff": {"starting_value": values[0], "var_math": [
				{"*": "final_value"}
			]}
		},
	]