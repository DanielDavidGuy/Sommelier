extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "lightweight"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Lightweight"
	localized_names = {}
	value = 1
	description = "<text_color_keyword>Destroys<end> adjacent <group_dwarflikes> and <last_dwarflikes>. Gives <icon_coin> equal to <text_color_keyword><value_1>x<end> the value of each symbol <text_color_keyword>destroyed<end> this way. <text_color_keyword>Destroys<end> itself after <text_color_keyword>destroying <value_2><end> symbols."
	localized_descriptions = {}
	values = [12, 3]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[1], "var_math": [{"-": "saved_value"}]}}
	rarity = "common"
	groups = ["human", "organism", "doglikes", "zlikes", "scaler"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "dwarflikes"},
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
				{"a": "groups", "b": "dwarflikes"},
				{"a": "tbd", "b": true}
			],
			"target_self": true,
			"value_to_change": "saved_value",
			"diff": 1,
			"push_front": true
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "dwarflikes"},
				{"a": "destroyed", "b": true},
			], 
			"target_self": true, 
			"value_to_change": "value_bonus", 
			"diff": {"starting_value": values[0], "var_math": [
				{"*": "final_value"}
			]}
		},
		{
			"comparisons": [
				{"a": "saved_value", "b": values[1], "greater_than_eq": true, "target_self": true}
			], 
			"target_self": true,
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"sfx_override": "ono"
		},
	]