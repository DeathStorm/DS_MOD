--AddsomenewStuff
data:extend
({
	{
		type = "recipe",
		name = "railgun-recipe",
		ingredients = 	{{"iron-stick",4},{"iron-plate",6}},
		result = "railgun",
		energy_required = 30,
		enabled = true
	},
	{
		type = "gun",
		name = "railgun",
		stack_size = 1
	},
	{
		type = "ammo",
		name = "railgun-ammo",
		stack_size = 1
	},
	{
		type = "transport-belt",
		name = "basic-counting-transport-belt",
		icon = "__base__/graphics/icons/basic-transport-belt.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {hardness = 0.2,mining_time = 0.3,result = "basic-counting-transport-belt"},
		max_health = 50,
		corpse = "small-remnants",
		resistances = {{type = "fire",percent = 60}},
		collision_box = {{-0.4,-0.4},{0.4,0.4}},
		selection_box = {{-0.5,-0.5},{0.5,0.5}},
		animation_speed_coefficient = 64,
		animations = 
		{
			filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
			priority = "extra-high",
			frame_width = 32,
			frame_height = 32,
			frame_count = 32,
			direction_count = 12
		},
		fast_replaceable_group = "transport-belt",
		speed = 0.03125
	},
	{
		type = "item",
		name = "basic-counting-transport-belt",
		icon = "__base__/graphics/icons/basic-transport-belt.png",
		flags = {"goes-to-quickbar"},
		subgroup = "belt",
		order = "a[transport-belt]-a[basic-transport-belt]",
		place_result = "basic-counting-transport-belt",
		stack_size = 64
	}
})

--Modifysomevalues
data.raw.ammo["piercing-bullet-magazine"].magazine_size = 20