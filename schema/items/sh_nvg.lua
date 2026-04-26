
ITEM.name        = "Night Vision Goggles"
ITEM.description = "Military-grade night vision goggles issued to MTF units. Provides clear visibility in total darkness — invaluable during blackouts or navigating unlit maintenance tunnels."
ITEM.model       = Model("models/weapons/w_crowbar.mdl")
ITEM.category    = "Equipment"
ITEM.width       = 2
ITEM.height      = 1
ITEM.noBusiness  = true

if SERVER then
    util.AddNetworkString("ix_scprp_nvg_toggle")
end

ITEM.functions.Toggle = {
    tip   = "Toggle night vision",
    icon  = "icon16/eye.png",
    OnRun = function(item)
        local client    = item.player
        local character = client:GetCharacter()
        if not character then return false end

        local nvOn = character:GetData("nvg", false)
        character:SetData("nvg", not nvOn)

        net.Start("ix_scprp_nvg_toggle")
            net.WriteBool(not nvOn)
        net.Send(client)

        client:notify(not nvOn and "Night vision activated." or "Night vision deactivated.")
        return false
    end
}
