

table.insert(data.raw.technology["artillery-shell-speed-1"].effects, {
    type = "gun-speed",
    ammo_category = "Bio_Cannon_Ammo",
    modifier = 1
})

--[[
table.insert(data.raw.technology["artillery-shell-range-1"].effects, {
    type = "artillery-range",
    ammo_category = "Bio_Cannon_Ammo",
    modifier = 0.3
})
]]

local techs = data.raw.technology
  -- Shooting speed modifier
  for index, modifier in pairs({
    [1] = 0.1,
    [2] = 0.2,
    [3] = 0.2,
    [4] = 0.2,
    [5] = 0.2,
    [6] = 0.4,
  }) do
    table.insert(techs["weapon-shooting-speed-" .. tostring(index)].effects, {
      type = "gun-speed",
      ammo_category = "Bio_Cannon_Ammo",
      modifier = modifier
    })
  end


-- Ammo damage modifier
    for index, modifier in pairs({
        [1] = 0.1,
        [2] = 0.1,
        [3] = 0.2,
        [4] = 0.2,
        [5] = 0.2,
        [6] = 0.4,
        [7] = 0.4,
      }) do
        table.insert(techs["physical-projectile-damage-" .. tostring(index)].effects, {
          type = "ammo-damage",
          ammo_category = "Bio_Cannon_Ammo",
          modifier = modifier
        })
      end
    
    

