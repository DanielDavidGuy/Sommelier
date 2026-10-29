extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "cellar"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Cellar"
	localized_names = {}
	description = "<icon_whiskey> <group_countdownbooze> and <last_countdownbooze> take <text_color_keyword>4<end> fewer spins to trigger their effects. <icon_sommelier> <text_color_keyword>destroys<end> <group_booze> and <last_booze> in <text_color_keyword>4<end> fewer spins."
	localized_descriptions = {}
	values = []
	rarity = "common"
	groups = []
	sfx = []
	effects = []