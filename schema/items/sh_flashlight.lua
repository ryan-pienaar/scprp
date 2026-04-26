
ITEM.name        = "Tactical Flashlight"
ITEM.description = "A standard-issue tactical flashlight. Essential for navigating the facility during blackouts caused by containment breaches or EMP events."
ITEM.model       = Model("models/weapons/w_crowbar.mdl")
ITEM.category    = "Equipment"
ITEM.width       = 1
ITEM.height      = 1
ITEM.price       = 5

ITEM.functions.Toggle = {
    tip   = "Toggle the flashlight",
    icon  = "icon16/lightbulb.png",
    OnRun = function(item)
        local client = item.player
        client:Flashlight(not client:FlashlightIsOn())
        return false
    end
}
