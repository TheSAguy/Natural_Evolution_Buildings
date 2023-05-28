if not thxbob then
    thxbob = {}
end
if not thxbob.lib then
    thxbob.lib = {}
end
if not NE_Functions then
    NE_Functions = {}
end

local NEBuildings = require('common')('Natural_Evolution_Buildings')
local ICONPATH = NEBuildings.modRoot .. "/graphics/icons/"
local W_ICONPATH = NEBuildings.modRoot .. "/graphics/icons/weapon/"

if mods["IndustrialRevolution3"] then

    ---- Move Techs around
    thxbob.lib.tech.add_recipe_unlock("military", "copper_bullets")
    thxbob.lib.tech.add_recipe_unlock("military", "bi_recipe_standard_dart_magazine")
    thxbob.lib.tech.add_recipe_unlock("military-2", "bi_recipe_enhanced_dart_magazine")
    thxbob.lib.tech.add_recipe_unlock("military-3", "bi_recipe_poison_dart_magazine")
    thxbob.lib.tech.add_recipe_unlock("military-2", "piercing_magazine_copper")
    thxbob.lib.recipe.remove_ingredient("copper_bullets", "copper-plate")

     
    --- Update Copper Bullet Ammo Recipe amd Damage
    thxbob.lib.recipe.add_new_ingredient("copper_bullets", {
        type = "item",
        name = "copper-plate",
        amount = 1
    })

    thxbob.lib.recipe.add_new_ingredient("copper_bullets", {
        type = "item",
        name = "tin-ingot",
        amount = 4
    })

    data.raw.ammo["copper-bullet-magazine"].ammo_type.action.action_delivery.target_effects = {{
        type = "create-entity",
        entity_name = "explosion-hit"
    }, 
    {
        type = "damage",
        damage = {
            amount = 6,
            type = "physical"
        }
    }, 
    {
        type = "damage",
        damage = {
            amount = 1,
            type = "bob-pierce"
        }
    }}

    
    --- Update Standard Dart Ammo Recipe
    thxbob.lib.recipe.remove_ingredient("bi_recipe_standard_dart_magazine", "copper-plate")

    thxbob.lib.recipe.add_new_ingredient("bi_recipe_standard_dart_magazine", {
        type = "item",
        name = "tin-ingot",
        amount = 5
    })
 
    --[[
    thxbob.lib.recipe.set_result("bi_recipe_basic_dart_magazine", {
        type = "item",
        name = "wood-chips",
        amount = 2
    })


     --- Update Dart Turret Recipe 
    ]
    data.raw.recipe["bi_recipe_dart_turret"].ingredients = {
        {"wood", 20},
        {"tin-gear-wheel", 4}
    }
    
    data.raw.recipe["bi_recipe_dart_turret"].results = {
        { type = "item", name = "bi-dart-turret", amount = 1 },
        { type = "item", name = "wood-chips", amount = 5 }
    }
   
    thxbob.lib.recipe.remove_ingredient("bi_recipe_dart_turret", "iron-gear-wheel")
    thxbob.lib.recipe.add_new_ingredient("bi_recipe_dart_turret", {
        type = "item",
        name = "tin-gear-wheel",
        amount = 4
    })

    thxbob.lib.recipe.set_result("bi_recipe_dart_turret", {
        type = "item",
        name = "wood-chips",
        amount = 5
    })
 ]]

    data:extend( 
    
        --- Basic Dart Ammo
        {
            {
            type = "recipe",
            name = "bi_recipe_basic_dart_magazine",
            icon_size = 64,
            icons = {{
                icon = W_ICONPATH .. "basic_dart_icon.png",
                icon_size = 64
            }},
            subgroup = "ammo",
            normal = {
                enabled = true,
                energy_required = 4,
                ingredients = {{"wood", 10}},
                results = {
                    { type = "item", name = "bi-basic-dart-magazine", amount = 1 },
                    { type = "item", name = "wood-chips", amount = 5 }
                }
            },
            expensive = {
                enabled = true,
                energy_required = 6,
                ingredients = {{"wood", 10}},
                results = {
                    { type = "item", name = "bi-basic-dart-magazine", amount = 1 },
                    { type = "item", name = "wood-chips", amount = 5 }
                }
        }, 
    },
        --- Dart Turret
{
    type = "recipe",
    name = "bi_recipe_dart_turret",
    icon = ICONPATH .. "bio_turret_icon.png",
    icon_size = 64,
    icons = {{
        icon = ICONPATH .. "bio_turret_icon.png",
        icon_size = 64
    }},
    subgroup = "defensive-structure",
    normal = {
        enabled = true,
        energy_required = 8,
        ingredients = {{"tin-gear-wheel", 5}, {"wood", 20}},
        results = {
            { type = "item", name = "bi-dart-turret", amount = 1 },
            { type = "item", name = "wood-chips", amount = 5 }
        }
    },

    expensive = {
        enabled = true,
        energy_required = 16,
        ingredients = {{"tin-gear-wheel", 10}, {"wood", 25}},
        results = {
            { type = "item", name = "bi-dart-turret", amount = 1 },
            { type = "item", name = "wood-chips", amount = 5 }
        }
    }

}, 

})

end