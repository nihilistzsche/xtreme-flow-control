function insert_elements(start_table, elements)
	for key, value in ipairs(elements) do
		table.insert(start_table, value)
	end
end

insert_elements(data.raw["technology"]["concrete"].effects, {
	{ type = "unlock-recipe", recipe = "concrete-pipe-straight" },
	{ type = "unlock-recipe", recipe = "concrete-pipe-t-junction" },
	{ type = "unlock-recipe", recipe = "concrete-pipe-elbow" },
})
insert_elements(data.raw["technology"]["plastics"].effects, {
	{ type = "unlock-recipe", recipe = "plastic-pipe-straight" },
	{ type = "unlock-recipe", recipe = "plastic-pipe-t-junction" },
	{ type = "unlock-recipe", recipe = "plastic-pipe-elbow" },
})
