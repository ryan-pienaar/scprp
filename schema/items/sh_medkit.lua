
ITEM.name        = "Medical Kit"
ITEM.description = "A comprehensive first-aid kit containing bandages, antiseptic, suture materials, and basic surgical tools. Restores a significant amount of health."
ITEM.model       = Model("models/Items/medkit.mdl")
ITEM.category    = "Medical"
ITEM.width       = 2
ITEM.height      = 1
ITEM.price       = 25

ITEM.functions.UseSelf = {
    tip   = "Treat your own wounds",
    icon  = "icon16/heart.png",
    OnRun = function(item)
        local client = item.player
        if client:Health() >= client:GetMaxHealth() then
            client:notify("You are already at full health.")
            return false
        end
        local healed = math.min(60, client:GetMaxHealth() - client:Health())
        client:SetHealth(client:Health() + healed)
        client:notify("You treat your wounds with the medkit. +" .. healed .. " HP")
        return true
    end
}

ITEM.functions.TreatOther = {
    tip   = "Treat a nearby wounded player",
    icon  = "icon16/user_add.png",
    OnRun = function(item)
        local client = item.player
        local target, dist = nil, 120

        for _, ply in ipairs(player.GetAll()) do
            if ply ~= client and IsValid(ply) and ply:Health() < ply:GetMaxHealth() then
                local d = ply:GetPos():Distance(client:GetPos())
                if d < dist then
                    target = ply
                    dist   = d
                end
            end
        end

        if not target then
            client:notify("No injured players in range.")
            return false
        end

        local healed = math.min(60, target:GetMaxHealth() - target:Health())
        target:SetHealth(target:Health() + healed)
        client:notify("You treat " .. target:Name() .. "'s wounds. +" .. healed .. " HP")
        target:notify(client:Name() .. " treats your wounds. +" .. healed .. " HP")
        return true
    end
}
