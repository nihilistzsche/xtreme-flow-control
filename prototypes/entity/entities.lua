local base_pipe_texture_location = "__xtreme-fishing__/graphics/entity/pipe/"

--  Functions
function define_pipe_sprite(pipe_type, filename)
	sprite = {
		filename = base_pipe_texture_location .. pipe_type .. "/" .. filename,
		priority = "extra-high",
		width = 128,
		height = 128,
		scale = 0.5,
	}
	return sprite
end

--  Initialization

--  Straight Concrete Pipe:
local concrete_pipe_straight = util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
concrete_pipe_straight.name = "concrete-pipe-straight"
concrete_pipe_straight.icon = "__xtreme-flow-control__/graphics/icon/concrete-pipe-straight.png"
concrete_pipe_straight.max_health = 200
concrete_pipe_straight.selection_box = { { -0.35, -0.5 }, { 0.35, 0.5 } }
concrete_pipe_straight.minable = { mining_time = 0.1, result = "concrete-pipe" }
concrete_pipe_straight.placeable_by = { item = "concrete-pipe", count = 1 }
concrete_pipe_straight.corpse = "small-remnants"
concrete_pipe_straight.fluid_box.pipe_connections = {
	{ position = { 0, -1 } },
	{ position = { 0, 1 } },
}
concrete_pipe_straight.pictures.picture = {
	north = define_pipe_sprite("concrete", "hr-pipe-straight-vertical.png"),
	south = define_pipe_sprite("concrete", "hr-pipe-straight-vertical.png"),
	east = define_pipe_sprite("concrete", "hr-pipe-straight-horizontal.png"),
	west = define_pipe_sprite("concrete", "hr-pipe-straight-horizontal.png"),
}

--  T-Junction Concrete Pipe
local concrete_pipe_t_junction = util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
concrete_pipe_t_junction.name = "concrete-pipe-t-junction"
concrete_pipe_t_junction.icon = "__xtreme-flow-control__/graphics/icon/concrete-pipe-t-junction.png"
concrete_pipe_t_junction.max_health = 200
concrete_pipe_t_junction.selection_box = { { -0.5, -0.35 }, { 0.5, 0.5 } }
concrete_pipe_t_junction.minable = { mining_time = 0.1, result = "concrete-pipe" }
concrete_pipe_t_junction.placeable_by = { item = "concrete-pipe", count = 1 }
concrete_pipe_t_junction.corpse = "small-remnants"
concrete_pipe_t_junction.fluid_box.pipe_connections = {
	{ position = { 1, 0 } },
	{ position = { 0, 1 } },
	{ position = { -1, 0 } },
}
concrete_pipe_t_junction.pictures.picture = {
	north = define_pipe_sprite("concrete", "hr-pipe-t-down.png"),
	east = define_pipe_sprite("concrete", "hr-pipe-t-left.png"),
	south = define_pipe_sprite("concrete", "hr-pipe-t-up.png"),
	west = define_pipe_sprite("concrete", "hr-pipe-t-right.png"),
}

--  Elbow Concrete Pipe
local concrete_pipe_elbow = util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
concrete_pipe_elbow.name = "concrete-pipe-elbow"
concrete_pipe_elbow.icon = "__xtreme-flow-control__/graphics/icon/concrete-pipe-elbow.png"
concrete_pipe_elbow.max_health = 200
concrete_pipe_elbow.selection_box = { { -0.5, -0.35 }, { 0.5, 0.5 } }
concrete_pipe_elbow.minable = { mining_time = 0.1, result = "concrete-pipe" }
concrete_pipe_elbow.placeable_by = { item = "concrete-pipe", count = 1 }
concrete_pipe_elbow.corpse = "small-remnants"
concrete_pipe_elbow.fluid_box.pipe_connections = {
	{ position = { 1, 0 } },
	{ position = { 0, 1 } },
}
concrete_pipe_elbow.pictures.picture = {
	north = define_pipe_sprite("concrete", "hr-pipe-corner-down-right.png"),
	east = define_pipe_sprite("concrete", "hr-pipe-corner-down-left.png"),
	south = define_pipe_sprite("concrete", "hr-pipe-corner-up-left.png"),
	west = define_pipe_sprite("concrete", "hr-pipe-corner-up-right.png"),
}

-- Straight Copper Pipe
local copper_pipe_straight = util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
copper_pipe_straight.name = "copper-pipe-straight"
copper_pipe_straight.icon = "__xtreme-flow-control__/graphics/icon/copper-pipe-straight.png"
copper_pipe_straight.max_health = 200
copper_pipe_straight.selection_box = { { -0.35, -0.5 }, { 0.35, 0.5 } }
copper_pipe_straight.minable = { mining_time = 0.1, result = "copper-pipe" }
copper_pipe_straight.placeable_by = { item = "copper-pipe", count = 1 }
copper_pipe_straight.corpse = "small-remnants"
copper_pipe_straight.fluid_box.pipe_connections = {
	{ position = { 0, -1 } },
	{ position = { 0, 1 } },
}
copper_pipe_straight.pictures.picture = {
	north = define_pipe_sprite("copper", "hr-pipe-straight-vertical.png"),
	south = define_pipe_sprite("copper", "hr-pipe-straight-vertical.png"),
	east = define_pipe_sprite("copper", "hr-pipe-straight-horizontal.png"),
	west = define_pipe_sprite("copper", "hr-pipe-straight-horizontal.png"),
}

--  T-Junction Copper Pipe
local copper_pipe_t_junction = util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
copper_pipe_t_junction.name = "copper-pipe-t-junction"
copper_pipe_t_junction.icon = "__xtreme-flow-control__/graphics/icon/copper-pipe-t-junction.png"
copper_pipe_t_junction.max_health = 200
copper_pipe_t_junction.selection_box = { { -0.5, -0.35 }, { 0.5, 0.5 } }
copper_pipe_t_junction.minable = { mining_time = 0.1, result = "copper-pipe" }
copper_pipe_t_junction.placeable_by = { item = "copper-pipe", count = 1 }
copper_pipe_t_junction.corpse = "small-remnants"
copper_pipe_t_junction.fluid_box.pipe_connections = {
	{ position = { 1, 0 } },
	{ position = { 0, 1 } },
	{ position = { -1, 0 } },
}

copper_pipe_t_junction.pictures.picture = {
	north = define_pipe_sprite("copper", "hr-pipe-t-down.png"),
	east = define_pipe_sprite("copper", "hr-pipe-t-left.png"),
	south = define_pipe_sprite("copper", "hr-pipe-t-up.png"),
	west = define_pipe_sprite("copper", "hr-pipe-t-right.png"),
}

--  Elbow Copper Pipe
local copper_pipe_elbow = util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
copper_pipe_elbow.name = "copper-pipe-elbow"
copper_pipe_elbow.icon = "__xtreme-flow-control__/graphics/icon/copper-pipe-elbow.png"
copper_pipe_elbow.max_health = 200
copper_pipe_elbow.selection_box = { { -0.5, -0.35 }, { 0.5, 0.5 } }
copper_pipe_elbow.minable = { mining_time = 0.1, result = "copper-pipe" }
copper_pipe_elbow.placeable_by = { item = "copper-pipe", count = 1 }
copper_pipe_elbow.corpse = "small-remnants"
copper_pipe_elbow.fluid_box.pipe_connections = {
	{ position = { 1, 0 } },
	{ position = { 0, 1 } },
}
copper_pipe_elbow.pictures.picture = {
	north = define_pipe_sprite("copper", "hr-pipe-corner-down-right.png"),
	east = define_pipe_sprite("copper", "hr-pipe-corner-down-left.png"),
	south = define_pipe_sprite("copper", "hr-pipe-corner-up-left.png"),
	west = define_pipe_sprite("copper", "hr-pipe-corner-up-right.png"),
}

-- Straight Plastic Pipe
local plastic_pipe_straight = util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
plastic_pipe_straight.name = "plastic-pipe-straight"
plastic_pipe_straight.icon = "__xtreme-flow-control__/graphics/icon/plastic-pipe-straight.png"
plastic_pipe_straight.max_health = 200
plastic_pipe_straight.selection_box = { { -0.35, -0.5 }, { 0.35, 0.5 } }
plastic_pipe_straight.minable = { mining_time = 0.1, result = "plastic-pipe" }
plastic_pipe_straight.placeable_by = { item = "plastic-pipe", count = 1 }
plastic_pipe_straight.corpse = "small-remnants"
plastic_pipe_straight.fluid_box.pipe_connections = {
	{ position = { 0, -1 } },
	{ position = { 0, 1 } },
}
plastic_pipe_straight.pictures.picture = {
	north = define_pipe_sprite("plastic", "hr-pipe-straight-vertical.png"),
	south = define_pipe_sprite("plastic", "hr-pipe-straight-vertical.png"),
	east = define_pipe_sprite("plastic", "hr-pipe-straight-horizontal.png"),
	west = define_pipe_sprite("plastic", "hr-pipe-straight-horizontal.png"),
}

--  T-Junction Plastic Pipe
local plastic_pipe_t_junction = util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
plastic_pipe_t_junction.name = "plastic-pipe-t-junction"
plastic_pipe_t_junction.icon = "__xtreme-flow-control__/graphics/icon/plastic-pipe-t-junction.png"
plastic_pipe_t_junction.max_health = 200
plastic_pipe_t_junction.selection_box = { { -0.5, -0.35 }, { 0.5, 0.5 } }
plastic_pipe_t_junction.minable = { mining_time = 0.1, result = "plastic-pipe" }
plastic_pipe_t_junction.placeable_by = { item = "plastic-pipe", count = 1 }
plastic_pipe_t_junction.corpse = "small-remnants"
plastic_pipe_t_junction.fluid_box.pipe_connections = {
	{ position = { 1, 0 } },
	{ position = { 0, 1 } },
	{ position = { -1, 0 } },
}

plastic_pipe_t_junction.pictures.picture = {
	north = define_pipe_sprite("plastic", "hr-pipe-t-down.png"),
	east = define_pipe_sprite("plastic", "hr-pipe-t-left.png"),
	south = define_pipe_sprite("plastic", "hr-pipe-t-up.png"),
	west = define_pipe_sprite("plastic", "hr-pipe-t-right.png"),
}

--  Elbow Plastic Pipe
local plastic_pipe_elbow = util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
plastic_pipe_elbow.name = "plastic-pipe-elbow"
plastic_pipe_elbow.icon = "__xtreme-flow-control__/graphics/icon/plastic-pipe-elbow.png"
plastic_pipe_elbow.max_health = 200
plastic_pipe_elbow.selection_box = { { -0.5, -0.35 }, { 0.5, 0.5 } }
plastic_pipe_elbow.minable = { mining_time = 0.1, result = "plastic-pipe" }
plastic_pipe_elbow.placeable_by = { item = "plastic-pipe", count = 1 }
plastic_pipe_elbow.corpse = "small-remnants"
plastic_pipe_elbow.fluid_box.pipe_connections = {
	{ position = { 1, 0 } },
	{ position = { 0, 1 } },
}
plastic_pipe_elbow.pictures.picture = {
	north = define_pipe_sprite("plastic", "hr-pipe-corner-down-right.png"),
	east = define_pipe_sprite("plastic", "hr-pipe-corner-down-left.png"),
	south = define_pipe_sprite("plastic", "hr-pipe-corner-up-left.png"),
	west = define_pipe_sprite("plastic", "hr-pipe-corner-up-right.png"),
}

-- Straight Stone Pipe
local stone_pipe_straight = util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
stone_pipe_straight.name = "stone-pipe-straight"
stone_pipe_straight.icon = "__xtreme-flow-control__/graphics/icon/stone-pipe-straight.png"
stone_pipe_straight.max_health = 200
stone_pipe_straight.selection_box = { { -0.35, -0.5 }, { 0.35, 0.5 } }
stone_pipe_straight.minable = { mining_time = 0.1, result = "stone-pipe" }
stone_pipe_straight.placeable_by = { item = "stone-pipe", count = 1 }
stone_pipe_straight.corpse = "small-remnants"
stone_pipe_straight.fluid_box.pipe_connections = {
	{ position = { 0, -1 } },
	{ position = { 0, 1 } },
}
stone_pipe_straight.pictures.picture = {
	north = define_pipe_sprite("stone", "hr-pipe-straight-vertical.png"),
	south = define_pipe_sprite("stone", "hr-pipe-straight-vertical.png"),
	east = define_pipe_sprite("stone", "hr-pipe-straight-horizontal.png"),
	west = define_pipe_sprite("stone", "hr-pipe-straight-horizontal.png"),
}

--  T-Junction Stone Pipe
local stone_pipe_t_junction = util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
stone_pipe_t_junction.name = "stone-pipe-t-junction"
stone_pipe_t_junction.icon = "__xtreme-flow-control__/graphics/icon/stone-pipe-t-junction.png"
stone_pipe_t_junction.max_health = 200
stone_pipe_t_junction.selection_box = { { -0.5, -0.35 }, { 0.5, 0.5 } }
stone_pipe_t_junction.minable = { mining_time = 0.1, result = "stone-pipe" }
stone_pipe_t_junction.placeable_by = { item = "stone-pipe", count = 1 }
stone_pipe_t_junction.corpse = "small-remnants"
stone_pipe_t_junction.fluid_box.pipe_connections = {
	{ position = { 1, 0 } },
	{ position = { 0, 1 } },
	{ position = { -1, 0 } },
}

stone_pipe_t_junction.pictures.picture = {
	north = define_pipe_sprite("stone", "hr-pipe-t-down.png"),
	east = define_pipe_sprite("stone", "hr-pipe-t-left.png"),
	south = define_pipe_sprite("stone", "hr-pipe-t-up.png"),
	west = define_pipe_sprite("stone", "hr-pipe-t-right.png"),
}

--  Elbow Stone Pipe
local stone_pipe_elbow = util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
stone_pipe_elbow.name = "stone-pipe-elbow"
stone_pipe_elbow.icon = "__xtreme-flow-control__/graphics/icon/stone-pipe-elbow.png"
stone_pipe_elbow.max_health = 200
stone_pipe_elbow.selection_box = { { -0.5, -0.35 }, { 0.5, 0.5 } }
stone_pipe_elbow.minable = { mining_time = 0.1, result = "stone-pipe" }
stone_pipe_elbow.placeable_by = { item = "stone-pipe", count = 1 }
stone_pipe_elbow.corpse = "small-remnants"
stone_pipe_elbow.fluid_box.pipe_connections = {
	{ position = { 1, 0 } },
	{ position = { 0, 1 } },
}
stone_pipe_elbow.pictures.picture = {
	north = define_pipe_sprite("stone", "hr-pipe-corner-down-right.png"),
	east = define_pipe_sprite("stone", "hr-pipe-corner-down-left.png"),
	south = define_pipe_sprite("stone", "hr-pipe-corner-up-left.png"),
	west = define_pipe_sprite("stone", "hr-pipe-corner-up-right.png"),
}

data:extend({ --  Entities
	concrete_pipe_elbow,
	concrete_pipe_t_junction,
	concrete_pipe_straight,
	copper_pipe_elbow,
	copper_pipe_t_junction,
	copper_pipe_straight,
	plastic_pipe_elbow,
	plastic_pipe_t_junction,
	plastic_pipe_straight,
	stone_pipe_elbow,
	stone_pipe_t_junction,
	stone_pipe_straight,
})
