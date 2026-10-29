extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_item"
	type = "barrel_o_dwarves"
	inherit_effects = false
	inherit_description = false
	inherit_art = true
	inherit_groups = true
	display_name = "Barrel of Dwarves"
	localized_names = {}
	description = "You may <text_color_keyword>destroy<end> this item and <text_color_keyword>add 7<end> <icon_dwarf>."
	localized_descriptions = {}
	values = []
	manually_destroyable = true
	rarity = "uncommon"
	groups = []
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"tiles_to_add": [
				{"type": "dwarf"},
				{"type": "dwarf"},
				{"type": "dwarf"},
				{"type": "dwarf"},
				{"type": "dwarf"},
				{"type": "dwarf"},
				{"type": "dwarf"},
			]
		}
	]