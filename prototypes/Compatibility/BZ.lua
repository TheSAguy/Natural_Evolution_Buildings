
if not thxbob then
    thxbob = {}
end
if not thxbob.lib then
    thxbob.lib = {}
end
if not NE_Functions then
    NE_Functions = {}
end


if mods["bzlead"] then

    require("prototypes.Compatibility.Krastorio2")
   

    if data.raw.item["lead-plate"] then
        thxbob.lib.recipe.remove_ingredient("bi_recipe_bi_dart_rifle", "copper-plate")
        thxbob.lib.recipe.add_new_ingredient("bi_recipe_bi_dart_rifle", {
        type = "item",
        name = "lead-plate",
        amount = 2}
        )
    end

end



if mods["bzaluminum"] then

    require("prototypes.Compatibility.Krastorio2")
   

    if data.raw.item["aluminum-plate"] then
        thxbob.lib.recipe.remove_ingredient("bi_recipe_bi_dart_rifle", "copper-plate")
        thxbob.lib.recipe.add_new_ingredient("bi_recipe_bi_dart_rifle", {
        type = "item",
        name = "aluminum-plate",
        amount = 2}
        )
    end

end

