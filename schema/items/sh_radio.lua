
ITEM.name        = "Foundation Radio"
ITEM.description = "An encrypted short-range communications device. Enables contact with other personnel on the same faction channel. The Foundation uses rotating encryption to prevent Chaos Insurgency intercept."
ITEM.model       = Model("models/props_lab/tpropswitch001.mdl")
ITEM.category    = "Equipment"
ITEM.width       = 1
ITEM.height      = 1
ITEM.noBusiness  = true

ITEM.functions.Toggle = {
    tip   = "Toggle the radio on/off",
    icon  = "icon16/sound.png",
    OnRun = function(item)
        local client    = item.player
        local character = client:GetCharacter()
        if not character then return false end

        local active = character:GetData("radio", false)
        character:SetData("radio", not active)

        if not active then
            client:notify("Radio activated. Channel: " .. ix.radio.GetChannelName(ix.radio.GetChannel(character:GetFaction())) .. ".")
        else
            client:notify("Radio deactivated.")
        end
        return false
    end
}
