
ITEM.name        = "Energy Drink"
ITEM.description = "A high-caffeine beverage popular among night-shift Security and MTF operatives. Provides a minor health boost and temporarily increases movement speed."
ITEM.model       = Model("models/props_junk/popcan01a.mdl")
ITEM.category    = "Consumables"
ITEM.width       = 1
ITEM.height      = 1
ITEM.price       = 5

ITEM.functions.Drink = {
    tip   = "Drink the energy drink",
    icon  = "icon16/cup_go.png",
    OnRun = function(item)
        local client   = item.player
        local healed   = math.min(5, client:GetMaxHealth() - client:Health())
        local origWalk = client:GetWalkSpeed()
        local origRun  = client:GetRunSpeed()

        client:SetHealth(client:Health() + healed)
        client:SetWalkSpeed(origWalk * 1.25)
        client:SetRunSpeed(origRun  * 1.25)
        client:notify("You chug the energy drink. +" .. healed .. " HP. Speed boost for 60 seconds.")

        timer.Simple(60, function()
            if IsValid(client) then
                client:SetWalkSpeed(origWalk)
                client:SetRunSpeed(origRun)
                client:notify("The energy boost has worn off.")
            end
        end)

        return true
    end
}
