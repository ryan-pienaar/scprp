
ITEM.name        = "EMP Grenade"
ITEM.description = "A Chaos Insurgency modified electromagnetic pulse device. Disables electronic systems and keycard readers in the blast radius. A staple of Foundation raid operations. Single use."
ITEM.model       = Model("models/weapons/w_grenade.mdl")
ITEM.category    = "Equipment"
ITEM.width       = 1
ITEM.height      = 1
ITEM.noBusiness  = true

ITEM.functions.Deploy = {
    tip   = "Deploy the EMP grenade",
    icon  = "icon16/bomb.png",
    OnRun = function(item)
        local client    = item.player
        local character = client:GetCharacter()
        if not character then return false end

        if character:GetFaction() ~= FACTION_CI then
            client:notify("You do not know how to operate this device.")
            return false
        end

        local pos    = client:GetPos()
        local radius = 600

        for _, ply in ipairs(player.GetAll()) do
            if ply:GetPos():Distance(pos) <= radius then
                ply:notify("[EMP] Electronic systems disrupted in your area.")

                -- Disable active radios within blast radius.
                local pChar = ply:GetCharacter()
                if pChar and pChar:HasRadioActive() then
                    pChar:SetData("radio", false)

                    timer.Simple(10, function()
                        if IsValid(ply) and ply:GetCharacter() then
                            ply:GetCharacter():SetData("radio", true)
                            ply:notify("Your radio has come back online.")
                        end
                    end)
                end
            end
        end

        ix.announcements.BroadcastFaction(
            "EMP detonation detected. Electronic systems may be compromised.",
            "WARNING",
            FACTION_ENGINEERING
        )

        client:notify("EMP deployed. Electronic systems disrupted in the area.")
        return true
    end
}
