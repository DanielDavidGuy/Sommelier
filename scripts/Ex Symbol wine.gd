extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "wine"
	inherit_effects = false
	inherit_description = true
	inherit_art = true
	inherit_groups = true
	display_name = "Wine"
	localized_names = {}
	value = 2
	description = "Permanently gives <icon_coin><color_FBF236>1<end> more after giving <icon_coin> <text_color_keyword>8<end> times."
	localized_descriptions = {}
	values = []
	value_text = {
		"color": "symbol_reminder_down_text", 
		"value": {"starting_value": 8, "var_math": [
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
	rarity = "uncommon"
	groups = ["countdownbooze"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": 8, "var_math": [
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
			"value_to_change": "permanent_bonus",
			"diff": 1,
			"anim": "shake",
			"sfx_override": "bubbling"
		},
		{
			"comparisons": [
				{"a": {"starting_value": 8, "var_math": [
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
				]}, "b": 0, "less_than_eq": true}
			],
			"value_to_change": "saved_value",
			"diff": -999
		},
	]