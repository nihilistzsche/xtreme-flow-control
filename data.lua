require("prototypes.entity.entities")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")

if settings.startup["flow-control-revert-to-normal-pipe"].value == false then
	data.raw["storage-tank"]["concrete-pipe-elbow"].minable.result = "concrete-pipe-elbow"
	data.raw["storage-tank"]["concrete-pipe-t-junction"].minable.result = "concrete-pipe-t-junction"
	data.raw["storage-tank"]["concrete-pipe-straight"].minable.result = "concrete-pipe-straight"
	data.raw["storage-tank"]["copper-pipe-elbow"].minable.result = "copper-pipe-elbow"
	data.raw["storage-tank"]["copper-pipe-t-junction"].minable.result = "copper-pipe-t-junction"
	data.raw["storage-tank"]["copper-pipe-straight"].minable.result = "copper-pipe-straight"
	data.raw["storage-tank"]["plastic-pipe-elbow"].minable.result = "plastic-pipe-elbow"
	data.raw["storage-tank"]["plastic-pipe-t-junction"].minable.result = "plastic-pipe-t-junction"
	data.raw["storage-tank"]["plastic-pipe-straight"].minable.result = "plastic-pipe-straight"
	data.raw["storage-tank"]["stone-pipe-elbow"].minable.result = "stone-pipe-elbow"
	data.raw["storage-tank"]["stone-pipe-t-junction"].minable.result = "stone-pipe-t-junction"
	data.raw["storage-tank"]["stone-pipe-straight"].minable.result = "stone-pipe-straight"
end
