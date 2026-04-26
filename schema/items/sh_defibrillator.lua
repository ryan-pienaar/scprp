
ITEM.name        = "Defibrillator"
ITEM.description = "An emergency cardiac resuscitation device. Used by Medical Department personnel to restart the hearts of critically wounded individuals. Requires trained hands. Single use."
ITEM.model       = Model("models/props_c17/medicalequipment001a.mdl")
ITEM.category    = "Medical"
ITEM.width       = 2
ITEM.height      = 2
ITEM.noBusiness  = true

ITEM.functions.Revive = {
    tip   = "Attempt to revive a downed player nearby",
    icon  = "icon16/lightning.png",
    OnRun = function(item)
        local client    = item.player
        local character = client:GetCharacter()
        if not character then return false end

        if character:GetFaction() ~= FACTION_MEDICAL then
            client:notify("Only Medical Department personnel are trained to use a defibrillator.")
            return false
        end

        -- Heal the nearest injured player to 30 HP as an emergency revival.
        local target, dist = nil, 150
        for _, ply in ipairs(player.GetAll()) do
            if ply ~= client and IsValid(ply) and ply:Alive() and ply:Health() <= 20 then
                local d = ply:GetPos():Distance(client:GetPos())
                if d < dist then
                    target = ply
                    dist   = d
                end
            end
        end

        if not target then
            client:notify("No critically wounded patients in range.")
            return false
        end

        target:SetHealth(30)
        client:notify("Defibrillator applied. " .. target:Name() .. " stabilised at 30 HP.")
        target:notify("You have been stabilised by " .. client:Name() .. ".")
        return true
    end
}
