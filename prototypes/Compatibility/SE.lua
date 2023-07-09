
--- If Space Exploration Mod is installed.
if mods["space-exploration"] then
  -- Space Exploration Mod likes Stack Sizes to be 200 max.
   

  if data.raw.item["alien-artifact"].stack_size  then
    data.raw.item["alien-artifact"].stack_size = 200
  end

  if data.raw.item["alien-artifact"].stack_size  then
  data.raw.item["alien-artifact"].stack_size = 200
  end

  if data.raw.item["pheromone_concrete"].stack_size  then
  data.raw.item["pheromone_concrete"].stack_size = 200
  end

  if data.raw.item["exhausted_pheromone_concrete"].stack_size then
    data.raw.item["exhausted_pheromone_concrete"].stack_size = 200
  end
  

--- Ammo

    
  if data.raw.ammo["bi-basic-dart-magazine"].stack_size  then
    data.raw.ammo["bi-basic-dart-magazine"].stack_size = 200
  end

  if data.raw.ammo["bi-standard-dart-magazine"].stack_size  then
    data.raw.ammo["bi-standard-dart-magazine"].stack_size = 200
  end

  if data.raw.ammo["bi-enhanced-dart-magazine"].stack_size  then
    data.raw.ammo["bi-enhanced-dart-magazine"].stack_size = 200
  end

  if data.raw.ammo["bi-poison-dart-magazine"].stack_size  then
    data.raw.ammo["bi-poison-dart-magazine"].stack_size = 200
  end

  if data.raw.ammo["bi-basic-dart-magazine_c"].stack_size  then
    data.raw.ammo["bi-basic-dart-magazine_c"].stack_size = 200
  end

  if data.raw.ammo["bi-standard-dart-magazine_c"].stack_size  then
    data.raw.ammo["bi-standard-dart-magazine_c"].stack_size = 200
  end

  if data.raw.ammo["bi-enhanced-dart-magazine_c"].stack_size  then
    data.raw.ammo["bi-enhanced-dart-magazine_c"].stack_size = 200
  end

  if data.raw.ammo["bi-poison-dart-magazine_c"].stack_size  then
    data.raw.ammo["bi-poison-dart-magazine_c"].stack_size = 200
  end



    --[[
    local tweaks = {
      ["alien-artifact"]    = 200,
      ["small-alien-artifact"]         = 800,
      ["pheromone_concrete"]        = 400,
      ["exhausted_pheromone_concrete"]     = 800
    }
    local item
    
    for tweak_name, tweak in pairs(tweaks) do
      item = data.raw.item[tweak_name]
      --if item then
      item.stack_size = 200
      --end
    end



      local ammo_tweaks = {
        ["bi-dart-magazine-basic"]      = 400,
        ["bi-dart-magazine-standard"]   = 400,
        ["bi-dart-magazine-enhanced"]   = 400,
        ["bi-dart-magazine-poison"]     = 400,
      }
      local item_ammo
      
      for tweak_name, tweak in pairs(ammo_tweaks) do
        item_ammo = data.raw.ammo[tweak_name]
       -- if item_ammo and item_ammo.stack_size > tweak then
          item_ammo.stack_size = 200
      --  end
      end



      ]]
 
    


end