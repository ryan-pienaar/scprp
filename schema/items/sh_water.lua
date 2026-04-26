
ITEM.name        = "Water Bottle"
ITEM.description = "A sealed 500ml water bottle. Staying hydrated during long facility shifts is mandatory per Foundation health protocols."
ITEM.model       = Model("models/props_junk/garbage_glassbottle001a.mdl")
ITEM.category    = "Consumables"
ITEM.width       = 1
ITEM.height      = 1
ITEM.price       = 2

ITEM.functions.Drink = {
    tip   = "Drink the water",
    icon  = "icon16/cup.png",
    OnRun = function(item)
        local client = item.player
        local healed = math.min(5, client:GetMaxHealth() - client:Health())
        client:SetHealth(client:Health() + healed)
        client:notify("You drink the water. +" .. healed .. " HP")
        return true
    end
}
