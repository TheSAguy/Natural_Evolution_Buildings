

    data.raw.ammo["copper-bullet-magazine"].ammo_type.action.action_delivery.target_effects = {{
        type = "create-entity",
        entity_name = "explosion-hit"
    }, 
    {
        type = "damage",
        damage = {
            amount = 8,
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


    data.raw["ammo-turret"]["bi-dart-turret"].attack_parameters.range = 24
    data.raw["gun"]["bi-dart-rifle"].attack_parameters.range = 24