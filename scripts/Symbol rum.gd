extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "rum"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Rum"
	localized_names = {}
	value = 1
	description = "Gives <icon_removal_token><color_6B6B6B><value_1><end> when <text_color_keyword>destroyed<end> after giving <icon_coin> <text_color_keyword><value_2><end> times."
	localized_descriptions = {}
	values = [1, 8]
	value_text = {
		"color": "symbol_reminder_down_text", 
		"value": {"starting_value": values[1], "var_math": [
			{"-": "times_coins_given"}, 
			{"-": {"var_math": [
				{"+": {"counted_items": "cellar"}},
				{"*": 4}
			]}},
			{"-": {"var_math": [
				{"+": {"counted_items": "cellar_essence"}},
				{"*": 8}
			]}},
			{"+": "saved_value"}
		]}
	}	
	rarity = "common"
	groups = ["anvillikes", "booze", "darkhumor", "dwarflikes", "food", "piratelikes", "countdownbooze"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": values[1], "var_math": [
					{"-": 1},
					{"-": "times_coins_given"},
					{"-": {"var_math": [
						{"+": {"counted_items": "cellar"}},
						{"*": 4}
					]}},
					{"-": {"var_math": [
						{"+": {"counted_items": "cellar_essence"}},
						{"*": 8}
					]}},
				]}, "b": 0, "less_than_eq": true},
				{"a": "saved_value", "b": 0},
			],
			"value_to_change": "saved_value",
			"diff": -999,
			"anim": "shake",
			"sfx_override": "bubbling"
		},
		{
			"comparisons": [
				{"a": "destroyed", "b": true},
				{"a": "saved_value", "b": -999, "less_than_eq": true}
			],
			"value_to_change": "removal_token_value",
			"diff": values[0]
		},
	]