-- Registering nodes
minetest.register_node("simpletraps:trap", {
    description = "Trap block",
    tiles = {"simpletraps_trap.png"},
    groups = {snappy = 3, flammable = 2},
	walkable = false,
})
minetest.register_node("simpletraps:stone_trap", {
    description = "Stone (trap)",
    tiles = {"default_stone.png"},
    groups = {snappy = 3, flammable = 2},
	walkable = false,
})
minetest.register_node("simpletraps:dirt_trap", {
    description = "Dirt (trap)",
    tiles = {"default_dirt.png"},
    groups = {snappy = 3, flammable = 2},
	walkable = false,
})
minetest.register_node("simpletraps:dirt_with_grass_trap", {
    description = "Dirt with Grass (trap)",
    tiles = {"default_grass.png", "default_dirt.png",
		{name = "default_dirt.png^default_grass_side.png",
			tileable_vertical = false}},
    groups = {snappy = 3, flammable = 2},
	walkable = false,
})
minetest.register_node("simpletraps:sand_trap", {
    description = "Sand (trap)",
    tiles = {"default_sand.png"},
    groups = {snappy = 3, flammable = 2},
	walkable = false,
})
minetest.register_node("simpletraps:stonebrick_trap", {
    description = "Stone Brick (trap)",
    tiles = {"default_stone_brick.png"},
    groups = {snappy = 3, flammable = 2},
	walkable = false,
})

-- Registering crafts
minetest.register_craft({
    output = "simpletraps:trap",
    recipe = {
        {"group:wood", "default:stick", "group:wood"},
        {"default:stick", "group:leaves", "default:stick"},
        {"group:wood", "default:stick", "group:wood"}
	}
})
minetest.register_craft({
    type = "shapeless",
    output = "simpletraps:stone_trap",
    recipe = {
        "simpletraps:trap",
        "default:stone",
    }
})