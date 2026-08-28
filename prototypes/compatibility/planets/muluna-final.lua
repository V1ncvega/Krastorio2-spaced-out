if not mods["planet-muluna"] then
	return
end

local data_util = require("data-util")
--Hide cryolab
data_util.hide("cryolab")
data_util.remove_prerequisite("kr-singularity-lab", "cryolab")

--Remove duplicate optimizasation tech card recipe
data.raw.recipe["space-science-pack"].surface_conditions = nil

data_util.hide("space-science-pack-muluna")
data_util.remove_recipe_unlock("advanced-space-science-pack", "space-science-pack")
data.raw.technology["advanced-space-science-pack"].icons = {
	{
		icon = "__Krastorio2Assets__/icons/cards/space-research-data.png",
		icon_size = 64,
	},
	{
		icon = data.raw["item"]["asteroid-collector"].icon,
		icon_size = data.raw["item"]["asteroid-collector"].icon_size,
		shift = { 36, -36 },
		scale = 0.75,
	},
}
