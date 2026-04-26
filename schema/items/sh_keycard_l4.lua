
ITEM.name           = "Keycard — Level 4"
ITEM.description    = "A top-secret Foundation access card. Grants entry to Level 4 restricted areas including high-value SCP containment chambers and command facilities. Rarely issued."
ITEM.model          = Model("models/props_lab/keycard01.mdl")
ITEM.category       = "Keycards"
ITEM.width          = 1
ITEM.height         = 1
ITEM.clearanceLevel = 4
ITEM.noBusiness     = true

ITEM.functions.Swipe = {
    tip    = "Swipe the keycard on a nearby access panel",
    icon   = "icon16/key_go.png",
    OnRun  = function(item)
        local client = item.player
        if ix.keycard then
            ix.keycard.TryAccess(client, 4)
        end
        return false
    end
}
