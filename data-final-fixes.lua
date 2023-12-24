local pipe_types = { "concrete", "copper", "plastic", "stone" }
local pipe_junctions = { "straight", "elbow", "t-junction" }

for _, pipe_type in pairs(pipe_types) do
    for _, pipe_junction in pairs(pipe_junctions) do
        local tbl = data.raw["storage-tank"][pipe_type.."-pipe-"..pipe_junction]
        tbl.fluid_box.base_area = data.raw.pipe[pipe_type.."-pipe"].fluid_box.base_area
        tbl.fluid_box.height = data.raw.pipe[pipe_type.."-pipe"].fluid_box.height
    end
end

if mods["k2-flow-control-bridge"] then
    data.raw.item["steel-pipe-elbow"].order="b[pipe]-a[pipe]l"
    data.raw.item["steel-pipe-straight"].order="b[pipe]-a[pipe]m"
    data.raw.item["steel-pipe-t-junction"].order="b[pipe]-a[pipe]n"
end
if mods["se-flow-control-bridge"] then
    data.raw.item["space-pipe-elbow"].order="b[pipe]-a[pipe]x"
    data.raw.item["space-pipe-straight"].order="b[pipe]-a[pipe]y"
    data.raw.item["space-pipe-t-junction"].order="b[pipe]-a[pipe]z"
end
