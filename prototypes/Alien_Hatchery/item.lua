local NEBuildings = require('common')('Natural_Evolution_Buildings')
local ICONPATH = NEBuildings.modRoot .. "/graphics/icons/"

data:extend({ ---- Alien Hatchery
{
    type = "item",
    name = "Alien_Hatchery",
    icon = ICONPATH .. "Alien_Hatchery.png",
    icon_size = 64,
    icons = {{
        icon = ICONPATH .. "Alien_Hatchery.png",
        icon_size = 64
    }},
    subgroup = "Natural-Evolution",
    order = "a[Alien_Hatchery]",
    place_result = "Alien_Hatchery",
    stack_size = 10
}, ---- Living Wall
{
    type = "item",
    name = "ne-living-wall",
    icon = ICONPATH .. "living_wall.png",
    icon_size = 64,
    icons = {{
        icon = ICONPATH .. "living_wall.png",
        icon_size = 64
    }},
    subgroup = "defensive-structure",
    order = "a[stone-wall]-a[living-wall]",
    place_result = "ne-living-wall",
    stack_size = 50
}, {
    type = "item",
    name = "ne-living-wall-exhausted",
    icon = ICONPATH .. "living_wall_exhausted.png",
    icon_size = 64,
    icons = {{
        icon = ICONPATH .. "living_wall_exhausted.png",
        icon_size = 64
    }},
    subgroup = "defensive-structure",
    order = "a[stone-wall]-a[living-wall]",
    stack_size = 50
},


})

if not data.raw.capsule["first-aid-kit"] then
data:extend({ 


  {
      type = "capsule",
      name = "first-aid-kit",
      icon = ICONPATH ..  "first-aid-kit.png",
      icon_size = 64,
      icon_mipmaps = 4,
      capsule_action = {
        type = "use-on-self",
        attack_parameters = {
          type = "projectile",
          ammo_category = "capsule",
          cooldown = 300,
          range = 0,
          ammo_type = {
            category = "capsule",
            target_type = "position",
            action = {
              type = "direct",
              action_delivery = {
                type = "instant",
                target_effects = {
                  type = "damage",
                  damage = { type = "physical", amount = -300 },
                },
              },
            },
          },
        },
      },
--      subgroup = "Materials",
      subgroup = "Natural-Evolution",
      order = "a[basic-item]-a[Alien-Stimulant]",
      stack_size = 50,
    }

})
end