if not NE_Functions then
    NE_Functions = {}
end

--- Add fuel values to Alien Artifacts.
NE_Functions.Add_Fuel_Values("small-alien-artifact", "10MJ")
NE_Functions.Add_Fuel_Values("alien-artifact", "250MJ")

if mods["bobenemies"] then

    NE_Functions.Add_Fuel_Values("alien-artifact-red", "250MJ")
    NE_Functions.Add_Fuel_Values("alien-artifact-orange", "250MJ")
    NE_Functions.Add_Fuel_Values("alien-artifact-yellow", "250MJ")
    NE_Functions.Add_Fuel_Values("alien-artifact-green", "250MJ")
    NE_Functions.Add_Fuel_Values("alien-artifact-blue", "250MJ")
    NE_Functions.Add_Fuel_Values("alien-artifact-purple", "250MJ")
    NE_Functions.Add_Fuel_Values("smal-alien-artifact-red", "10MJ")
    NE_Functions.Add_Fuel_Values("smal-alien-artifact-orange", "10MJ")
    NE_Functions.Add_Fuel_Values("smal-alien-artifact-yellow", "10MJ")
    NE_Functions.Add_Fuel_Values("smal-alien-artifact-green", "10MJ")
    NE_Functions.Add_Fuel_Values("smal-alien-artifact-blue", "10MJ")
    NE_Functions.Add_Fuel_Values("smal-alien-artifact-purple", "10MJ")

end



local default_target_masks = data.raw["utility-constants"].default.default_trigger_target_mask_by_type
default_target_masks["unit-spawner"] = default_target_masks["unit-spawner"] or {"common"} -- everything should have "common", unless there is specific reason not to
table.insert(default_target_masks["unit-spawner"], "Bio_Cannon_Ammo")

for w, worm in pairs(data.raw.turret) do
    worm.trigger_target_mask = worm.trigger_target_mask or default_target_masks["turret"] or {"common"}
    table.insert(worm.trigger_target_mask, "Bio_Cannon_Ammo")
end

