extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "cellar_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Cellar"
	localized_names = {}
	description = "<group_countdownbooze> and <last_countdownbooze> take <text_color_keyword>8<end> fewer spins to trigger their effects. <text_color_keyword>Destroys<end> itself when <group_countdownbooze> or <last_countdownbooze> is <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = []
	rarity = "essence"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "countdownbooze"},
				{"a": "destroyed", "b": true}
			],
			"item_to_destroy": "cellar_essence",
		}
	]