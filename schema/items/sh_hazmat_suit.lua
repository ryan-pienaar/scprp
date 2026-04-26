
ITEM.name        = "HAZMAT Suit"
ITEM.description = "A full-body Hazardous Materials protection suit providing resistance to chemical and biological hazards. Mandatory in certain SCP containment zones. Bulky but potentially life-saving."
ITEM.model       = Model("models/props_c17/lockerbank001a.mdl")
ITEM.category    = "Equipment"
ITEM.width       = 2
ITEM.height      = 2
ITEM.noBusiness  = true

ITEM.functions.Equip = {
    tip   = "Put on the HAZMAT suit",
    icon  = "icon16/shield.png",
    OnRun = function(item)
        local client    = item.player
        local character = client:GetCharacter()
        if not character then return false end

        if character:GetData("hazmaton", false) then
            client:notify("You are already wearing a HAZMAT suit.")
            return false
        end

        character:SetData("hazmaton", true)
        client:SetArmor(math.min(client:Armor() + 50, 100))
        -- Slight speed reduction for wearing bulky suit.
        client:SetRunSpeed(math.max(client:GetRunSpeed() - 30, 100))
        client:notify("HAZMAT suit equipped. Chemical and biological resistance active.")
        return false
    end
}

ITEM.functions.Remove = {
    tip   = "Remove the HAZMAT suit",
    icon  = "icon16/shield_delete.png",
    OnRun = function(item)
        local client    = item.player
        local character = client:GetCharacter()
        if not character then return false end

        if not character:GetData("hazmaton", false) then
            client:notify("You are not wearing a HAZMAT suit.")
            return false
        end

        character:SetData("hazmaton", false)
        client:SetRunSpeed(client:GetRunSpeed() + 30)
        client:notify("HAZMAT suit removed.")
        return false
    end
}
