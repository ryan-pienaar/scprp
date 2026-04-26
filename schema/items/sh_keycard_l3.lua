
ITEM.name           = "Keycard — Level 3"
ITEM.description    = "A high-clearance Foundation access card. Grants entry to Level 3 restricted areas including primary containment sectors and classified research labs."
ITEM.model          = Model("models/props_lab/keycard01.mdl")
ITEM.category       = "Keycards"
ITEM.width          = 1
ITEM.height         = 1
ITEM.clearanceLevel = 3
ITEM.noBusiness     = true

ITEM.functions.Swipe = {
    tip    = "Swipe the keycard on a nearby access panel",
    icon   = "icon16/key_go.png",
    OnRun  = function(item)
        local client = item.player
        if ix.keycard then
            ix.keycard.TryAccess(client, 3)
        end
        return false
    end
}
