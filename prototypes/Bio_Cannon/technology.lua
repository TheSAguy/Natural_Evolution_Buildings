data:extend({{
    type = "technology",
    name = "bi_tech_bio_cannon",
    icon_size = 256,
    icon = "__Natural_Evolution_Buildings__/graphics/technology/bi-tech-bio_cannon.png",
    effects = {{
        type = "unlock-recipe",
        recipe = "bi_recipe_bio_cannon"
    }, {
        type = "unlock-recipe",
        recipe = "NE_gun_turret"
    }, {
        type = "unlock-recipe",
        recipe = "bi_recipe_bio_cannon_proto_ammo"
    }, {
        type = "unlock-recipe",
        recipe = "bi_recipe_bio_cannon_basic_ammo"
    }, {
        type = "unlock-recipe",
        recipe = "bi_recipe_bio_cannon_poison_ammo"
    }, {
        type = "unlock-recipe",
        recipe = "bi_recipe_bio_cannon_biological_ammo"
    }},
    prerequisites = {"military-2"},
    unit = {
        count = 300,
        ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"military-science-pack", 1}},
        time = 30
    }
}})
