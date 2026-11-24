extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "sommelier"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Sommelier"
	localized_names = {}
	value = 2
	description = "<text_color_keyword>Destroys<end> adjacent <group_booze> and <last_booze>. Gives <icon_coin> equal to <text_color_keyword>?x<end> the value of symbols <text_color_keyword>destroyed<end> this way. \"<text_color_keyword>?<end>\" increases by <text_color_keyword><value_1><end> for each symbol <text_color_keyword>destroyed<end> this way."
	localized_descriptions = {}
	values = [4]
	value_text = {"color": "symbol_reminder_up_text", "value": {"starting_value": "saved_value"}}
	rarity = "rare"
	groups = ["human", "organism", "doglikes", "zlikes", "newsworthy", "scaler"]
	sfx = ["jump"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "booze"},
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
				{"a": "type", "b": "empty"},
				{"a": "groups", "b": "booze"},
				{"a": "destroyed", "b": true},
			], 
			"target_self": true, 
			"value_to_change": "saved_value", 
			"diff": values[0]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "empty"},
				{"a": "groups", "b": "booze"},
				{"a": "destroyed", "b": true},
			], 
			"target_self": true, 
			"value_to_change": "value_bonus", 
			"diff": {"starting_value": {"starting_value": "saved_value", "target_self": true}, "var_math": [
				{"*": "final_value"}
			]}
		},
	]