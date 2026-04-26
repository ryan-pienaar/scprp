
ITEM.name           = "Keycard — Level 1"
ITEM.description    = "A standard Foundation access card. Grants entry to Level 1 restricted areas such as D-Class housing corridors, basic storage, and low-risk checkpoints."
ITEM.model          = Model("models/props_lab/keycard01.mdl")
ITEM.category       = "Keycards"
ITEM.width          = 1
ITEM.height         = 1
ITEM.clearanceLevel = 1
ITEM.price          = 0
ITEM.noBusiness     = true

ITEM.functions.Swipe = {
    tip    = "Swipe the keycard on a nearby access panel",
    icon   = "icon16/key_go.png",
    OnRun  = function(item)
        local client = item.player
        if ix.keycard then
            ix.keycard.TryAccess(client, 1)
        end
        return false
    end
}
