
ITEM.name        = "Bandage"
ITEM.description = "Standard medical gauze for wound dressing. Stops minor bleeding and restores a small amount of health. Carried by most Foundation staff."
ITEM.model       = Model("models/Items/medshot_large.mdl")
ITEM.category    = "Medical"
ITEM.width       = 1
ITEM.height      = 1
ITEM.price       = 5

ITEM.functions.Apply = {
    tip   = "Apply the bandage to your wounds",
    icon  = "icon16/heart_add.png",
    OnRun = function(item)
        local client = item.player
        if client:Health() >= client:GetMaxHealth() then
            client:notify("You are already at full health.")
            return false
        end
        local healed = math.min(20, client:GetMaxHealth() - client:Health())
        client:SetHealth(client:Health() + healed)
        client:notify("You bandage the wound. +" .. healed .. " HP")
        return true
    end
}
