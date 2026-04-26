
ITEM.name           = "Keycard — Level 5"
ITEM.description    = "An O5-level Foundation access card. Grants unrestricted access to every area of the facility. Possession by anyone below O5 Council status is a serious protocol violation."
ITEM.model          = Model("models/props_lab/keycard01.mdl")
ITEM.category       = "Keycards"
ITEM.width          = 1
ITEM.height         = 1
ITEM.clearanceLevel = 5
ITEM.noBusiness     = true

ITEM.functions.Swipe = {
    tip    = "Swipe the keycard on a nearby access panel",
    icon   = "icon16/key_go.png",
    OnRun  = function(item)
        local client = item.player
        if ix.keycard then
            ix.keycard.TryAccess(client, 5)
        end
        return false
    end
}
