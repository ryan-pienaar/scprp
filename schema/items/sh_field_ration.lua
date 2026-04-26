
ITEM.name        = "Field Ration"
ITEM.description = "A compact, calorie-dense meal packed for extended operations. Standard issue for Foundation personnel on assignment away from the cafeteria. Provides minor healing."
ITEM.model       = Model("models/props_junk/garbage_milkcarton001a.mdl")
ITEM.category    = "Consumables"
ITEM.width       = 1
ITEM.height      = 1
ITEM.price       = 3

ITEM.functions.Eat = {
    tip   = "Eat the field ration",
    icon  = "icon16/cup.png",
    OnRun = function(item)
        local client = item.player
        local healed = math.min(10, client:GetMaxHealth() - client:Health())
        client:SetHealth(client:Health() + healed)
        client:notify("You eat the field ration. +" .. healed .. " HP")
        return true
    end
}
