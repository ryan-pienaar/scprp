
ITEM.name           = "Keycard — Level 2"
ITEM.description    = "A Foundation access card issued to experienced personnel. Grants entry to Level 2 restricted areas including most laboratory wings and secondary containment zones."
ITEM.model          = Model("models/props_lab/keycard01.mdl")
ITEM.category       = "Keycards"
ITEM.width          = 1
ITEM.height         = 1
ITEM.clearanceLevel = 2
ITEM.noBusiness     = true

ITEM.functions.Swipe = {
    tip    = "Swipe the keycard on a nearby access panel",
    icon   = "icon16/key_go.png",
    OnRun  = function(item)
        local client = item.player
        if ix.keycard then
            ix.keycard.TryAccess(client, 2)
        end
        return false
    end
}
