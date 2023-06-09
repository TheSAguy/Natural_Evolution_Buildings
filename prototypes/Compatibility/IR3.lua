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
    
    
    --- Update Copper Bullet Ammo Recipe amd Damage
    thxbob.lib.recipe.remove_ingredient("copper_bullets", "copper-plate")
    
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


    --- Update Piercing-rounds-magazine from Copper Ammo
    thxbob.lib.recipe.remove_ingredient("piercing_magazine_copper", "copper-plate")
    
    thxbob.lib.recipe.add_new_ingredient("piercing_magazine_copper", {
        type = "item",
        name = "tin-plate",
        amount = 8
    })


    --- Update Bio Cannon 
    thxbob.lib.recipe.remove_ingredient("bi_recipe_bio_cannon", "electric-engine-unit")
    
    thxbob.lib.recipe.add_new_ingredient("bi_recipe_bio_cannon", {
        type = "item",
        name = "iron-motor",
        amount = 25
    })




    --- Update Standard Dart Ammo Recipe
    thxbob.lib.recipe.remove_ingredient("bi_recipe_standard_dart_magazine", "copper-plate")

    thxbob.lib.recipe.add_new_ingredient("bi_recipe_standard_dart_magazine", {
        type = "item",
        name = "tin-ingot",
        amount = 5
    })
 
 --- Update Dart Turret Recipe 

 data.raw.recipe["bi_recipe_dart_turret"].normal.ingredients = {
     {"wood", 20},
     {"tin-gear-wheel", 4}
 }

 data.raw.recipe["bi_recipe_dart_turret"].normal.results = {
    { type = "item", name = "bi-dart-turret", amount = 1 },
    { type = "item", name = "wood-chips", amount = 5 }
}

data.raw.recipe["bi_recipe_dart_turret"].expensive.ingredients = {
    {"wood", 20},
    {"tin-gear-wheel", 6}
}

data.raw.recipe["bi_recipe_dart_turret"].expensive.results = {
   { type = "item", name = "bi-dart-turret", amount = 1 },
   { type = "item", name = "wood-chips", amount = 5 }
}

data.raw.recipe["bi_recipe_dart_turret"].expensive.energy_required = 16
   

--- Update Basic Dart Ammo
data.raw.recipe["bi_recipe_basic_dart_magazine"].normal.results = {
    { type = "item", name = "bi-basic-dart-magazine", amount = 1 },
    { type = "item", name = "wood-chips", amount = 5 }
}

data.raw.recipe["bi_recipe_basic_dart_magazine"].expensive.results = {
    { type = "item", name = "bi-basic-dart-magazine", amount = 1 },
    { type = "item", name = "wood-chips", amount = 5 }
}

data.raw.recipe["bi_recipe_basic_dart_magazine"].expensive.energy_required = 6


end
