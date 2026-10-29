extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "whiskey"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Whiskey"
	localized_names = {}
	value = 0
	description = "Permanently gives <icon_coin><color_FBF236><value_1><end> more every <text_color_keyword><value_2><end> spins."
	localized_descriptions = {}
	values = [1, 8]	
	value_text = {
		"color": "symbol_reminder_down_text", 
		"value": {"starting_value": values[1], "var_math": [
			{"-": "saved_value"}, 
			{"-": {"var_math": [
				{"+": {"counted_items": "cellar"}},
				{"*": 4}
			]}}
		]}
	}
	rarity = "common"
	groups = ["anvillikes", "booze", "darkhumor", "dwarflikes", "food", "farmerlikes"]
	sfx = []
	effects = [
		{
			"value_to_change": "saved_value",
			"diff": 1,
			"push_front": true
		},
		{
			"comparisons": [
				{"a": {"starting_value": values[1], "var_math": [
					{"-": "saved_value"},
					{"-": {"var_math": [
						{"+": {"counted_items": "cellar"}},
						{"*": 4}
					]}}
				]}, "b": 0, "less_than_eq": true}
			], 
			"anim": "shake",
			"sfx_override": "bubbling",
			"value_to_change": "permanent_bonus", 
			"diff": values[0]
		},
		{
			"comparisons": [
				{"a": {"starting_value": values[1], "var_math": [
					{"-": "saved_value"},
					{"-": {"var_math": [
						{"+": {"counted_items": "cellar"}},
						{"*": 4}
					]}}
				]}, "b": 0, "less_than_eq": true}
			], 
			"value_to_change": "saved_value", 
			"diff": 0,
			"overwrite": true
		},
	]