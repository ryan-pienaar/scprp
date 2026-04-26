
ITEM.name        = "SCP-500 Pill"
ITEM.description = "A single red pill from SCP-500-01. [DATA EXPUNGED]. Classified Foundation analysis indicates it is capable of curing any known disease, infection, or physical ailment without exception. Extremely scarce — authorised use only. Single use."
ITEM.model       = Model("models/Items/medshot_large.mdl")
ITEM.category    = "Medical"
ITEM.width       = 1
ITEM.height      = 1
ITEM.noBusiness  = true

ITEM.functions.Take = {
    tip   = "Take the SCP-500 pill",
    icon  = "icon16/star.png",
    OnRun = function(item)
        local client    = item.player
        local character = client:GetCharacter()

        client:SetHealth(client:GetMaxHealth())
        client:SetArmor(100)

        -- Remove any active debuffs.
        if character then
            character:SetData("morphine", false)
            character:SetData("hazmaton", false)
        end

        client:notify("[SCP-500] Complete biological restoration. All injuries healed. All debuffs removed.")
        return true
    end
}
