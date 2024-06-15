local small_db=table.deepcopy(data.raw["electric-pole"]["medium-electric-pole"])
local long_distance_db=table.deepcopy(data.raw["electric-pole"]["big-electric-pole"])
local large_db=table.deepcopy(data.raw["electric-pole"]["substation"])

local integration_patch_render_layer = "decorative"

small_db.name = "ued-small-db"
small_db.icon = "__underground-energy-distribution__/graphics/md-icon.png"
small_db.icon_mipmaps = 1
small_db.minable = {mining_time = 0.5, result = "ued-small-db"}
small_db.drawing_box = {{-0.5, -0.5}, {0.5, 0.5}}
small_db.draw_copper_wires=false
small_db.check_collision_with_entities = true
small_db.supply_area_distance = 3.5
small_db.maximum_wire_distance = 9
small_db.draw_circuit_wires=settings.startup["ued-settings-show-circuit"].value
small_db.integration_patch =
{
	layers =
	{
		{
			filename = "__underground-energy-distribution__/graphics/md-pole.png",
			priority = "low",
			width = 256,
			height = 256,
			scale = 0.122,
		},
		{
			filename = "__underground-energy-distribution__/graphics/pole-shadow.png",
			priority = "low",
			width = 256,
			height = 256,
			scale = 0.122,
			draw_as_shadow = true,
		},
	}
}
small_db.pictures =
{
	layers =
	{
		{
			filename = "__underground-energy-distribution__/graphics/empty.png",
			priority = "low",
			width = 256,
			height = 256,
			scale = 0.122,
			direction_count = 1,
		},
	}
}
small_db.connection_points =
{
	{
		shadow =
		{
			copper = util.by_pixel_hr(0, 0),
			red = util.by_pixel_hr(0, 0),
			green = util.by_pixel_hr(0, 0)
		},
		wire =
		{
			copper = util.by_pixel_hr(0, 0),
			red = util.by_pixel_hr(0, 0),
			green = util.by_pixel_hr(0, 0)
		},
	}
}
small_db.collision_mask = {"doodad-layer"}
--small_db.collision_mask = {"water-tile","colliding-with-tiles-only"}
--small_db.collision_box =  {{0,0},{0,0}}
small_db.integration_patch_render_layer = integration_patch_render_layer

long_distance_db.name = "ued-long-distance-db"
long_distance_db.icon = "__underground-energy-distribution__/graphics/bg-icon.png"
long_distance_db.icon_mipmaps = 1
long_distance_db.minable = {mining_time = 0.5, result = "ued-long-distance-db"}
long_distance_db.drawing_box = {{-1, -1}, {1, 1}}
long_distance_db.draw_copper_wires=false
long_distance_db.supply_area_distance = 3
long_distance_db.maximum_wire_distance = 50
long_distance_db.draw_circuit_wires=settings.startup["ued-settings-show-circuit"].value
long_distance_db.integration_patch =
{
	layers =
	{
		{
			filename = "__underground-energy-distribution__/graphics/bg-pole.png",
			priority = "low",
			width = 256,
			height = 256,
			scale = 0.23,
		},
		{
			filename = "__underground-energy-distribution__/graphics/pole-shadow.png",
			priority = "low",
			width = 256,
			height = 256,
			scale = 0.23,
			draw_as_shadow = true,
		},
	}
}
long_distance_db.pictures =
{
	layers =
	{
		{
			filename = "__underground-energy-distribution__/graphics/empty.png",
			priority = "low",
			width = 256,
			height = 256,
			scale = 0.23,
			direction_count = 1,
		},
	}
}
long_distance_db.connection_points =
{
	{
		shadow =
		{
			copper = util.by_pixel_hr(0, 0),
			red = util.by_pixel_hr(0, 0),
			green = util.by_pixel_hr(0, 0)
		},
		wire =
		{
			copper = util.by_pixel_hr(0, 0),
			red = util.by_pixel_hr(0, 0),
			green = util.by_pixel_hr(0, 0)
		},
	}
}
long_distance_db.collision_mask = {"doodad-layer"}
--long_distance_db.collision_mask = {"water-tile","colliding-with-tiles-only"}
--long_distance_db.collision_box =  {{0,0},{0,0}}
long_distance_db.integration_patch_render_layer = integration_patch_render_layer
long_distance_db.fast_replaceable_group = "big-electric-pole"

large_db.name = "ued-large-db"
large_db.icon = "__underground-energy-distribution__/graphics/sb-icon.png"
large_db.icon_mipmaps = 1
large_db.minable = {mining_time = 0.5, result = "ued-long-distance-db"}
large_db.drawing_box = {{-1, -1}, {1, 1}}
large_db.draw_copper_wires=false
large_db.supply_area_distance = 15
large_db.maximum_wire_distance = 30
large_db.draw_circuit_wires=settings.startup["ued-settings-show-circuit"].value
large_db.integration_patch =
{
	layers =
	{
		{
			filename = "__underground-energy-distribution__/graphics/sb-pole.png",
			priority = "low",
			width = 256,
			height = 256,
			scale = 0.23,
		},
		{
			filename = "__underground-energy-distribution__/graphics/pole-shadow.png",
			priority = "low",
			width = 256,
			height = 256,
			scale = 0.23,
			draw_as_shadow = true,
		},
	}
}
large_db.pictures =
{
	layers =
	{
		{
			filename = "__underground-energy-distribution__/graphics/empty.png",
			priority = "low",
			width = 256,
			height = 256,
		scale = 0.23,
			direction_count = 1,
		},
	}
}
large_db.connection_points =
{
	{
		shadow =
		{
			copper = util.by_pixel_hr(0, 0),
			red = util.by_pixel_hr(0, 0),
			green = util.by_pixel_hr(0, 0)
		},
		wire =
		{
			copper = util.by_pixel_hr(0, 0),
			red = util.by_pixel_hr(0, 0),
			green = util.by_pixel_hr(0, 0)
		},
	}
}
large_db.collision_mask = {"doodad-layer"}
--large_db.collision_mask = {"water-tile","colliding-with-tiles-only"}
large_db.integration_patch_render_layer = integration_patch_render_layer
large_db.fast_replaceable_group = "substation-electric-pole"

data:extend({
-- Items
	{
		type = "item",
		name = "ued-small-db",
		icon = "__underground-energy-distribution__/graphics/md-icon.png",
		icon_size = 64,
		subgroup = "energy-pipe-distribution",
		order = "a[energy]-b[medium-electric-pole]-b[ued-small-db]",
		place_result = "ued-small-db",
		stack_size = 50
	},
	{
		type = "item",
		name = "ued-long-distance-db",
		icon = "__underground-energy-distribution__/graphics/bg-icon.png",
		icon_size = 64,
		subgroup = "energy-pipe-distribution",
		order = "a[energy]-c[big-electric-pole]-b[ued-long-distance-db]",
		place_result = "ued-long-distance-db",
		stack_size = 50
	},
	{
		type = "item",
		name = "ued-large-db",
		icon = "__underground-energy-distribution__/graphics/sb-icon.png",
		icon_size = 64,
		subgroup = "energy-pipe-distribution",
		order = "a[energy]-d[substation]-b[ued-large-db]",
		place_result = "ued-large-db",
		stack_size = 50
	},

--Recipe
	{
		type = "recipe",
		name = "ued-small-db",
		enabled = "false",
		ingredients = 
		{
			{"medium-electric-pole", 1},
			{"copper-plate", 10},
			{"steel-plate", 5}
		},
		result = "ued-small-db"
	},
	{
		type = "recipe",
		name = "ued-long-distance-db",
		enabled = "false",
		ingredients = 
		{
			{"big-electric-pole", 1},
			{"copper-plate", 15},
			{"steel-plate", 5}
		},
		result = "ued-long-distance-db"
	},
	{
		type = "recipe",
		name = "ued-large-db",
		enabled = "false",
		ingredients = 
		{
			{"substation", 1},
			{"copper-plate", 20},
			{"steel-plate", 5}
		},
		result = "ued-large-db"
	},

	small_db,
	long_distance_db,
	large_db,
})