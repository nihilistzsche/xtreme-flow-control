local pipe_types = { "concrete", "copper", "plastic", "stone" }
local pipe_junctions = { "straight", "elbow", "t-junction" }

for _, pipe_type in pairs(pipe_types) do
    for _, pipe_junction in pairs(pipe_junctions) do
        local tbl = data.raw["storage-tank"][pipe_type.."-pipe-"..pipe_junction]
        tbl.fluid_box.base_area = data.raw.pipe[pipe_type.."-pipe"].fluid_box.base_area
        tbl.fluid_box.height = data.raw.pipe[pipe_type.."-pipe"].fluid_box.height
    end
end

