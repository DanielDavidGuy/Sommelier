extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "cider"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Cider"
	localized_names = {}
	value = 1
	description = "<text_color_keyword>Destroys<end> adjacent <group_fruit> and <last_fruit> if this symbol has not yet <text_color_keyword>destroyed<end> any symbols. Permanently gives <text_color_keyword>?x<end> more <icon_coin> where \"<text_color_keyword>?<end>\" is equal to <text_color_keyword>1 +<end> the value of the <text_color_keyword>first<end> symbol <text_color_keyword>destroyed<end> this way."
	localized_descriptions = {}
	values = [3]
	rarity = "rare"
	groups = ["anvillikes", "booze", "darkhumor", "food", "connlikes"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "fruit"},
				{"a": "saved_value", "b": 0, "target_self": true}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump",
			"one_time": true
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "fruit"},
				{"a": "destroyed", "b": true},
				{"a": "saved_value", "b": 0, "target_self": true}
			],
			"target_self": true,
			"value_to_change": "permanent_multiplier",
			"diff": {"starting_value": 1, "var_math": [
				{"+": "final_value"},
			]},
			"one_time": true
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "fruit"},
				{"a": "destroyed", "b": true},
				{"a": "saved_value", "b": 0, "target_self": true}
			],
			"target_self": true,
			"value_to_change": "saved_value",
			"diff": {"starting_value": "final_value"},
			"one_time": true
		},
	]