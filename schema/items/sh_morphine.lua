
ITEM.name        = "Morphine Autoinjector"
ITEM.description = "A pre-loaded morphine syringe for emergency field use. Suppresses pain response and provides a minor health boost. Effects last 30 seconds."
ITEM.model       = Model("models/Items/medshot_large.mdl")
ITEM.category    = "Medical"
ITEM.width       = 1
ITEM.height      = 1
ITEM.price       = 15

ITEM.functions.Inject = {
    tip   = "Inject yourself with morphine",
    icon  = "icon16/pill.png",
    OnRun = function(item)
        local client    = item.player
        local character = client:GetCharacter()
        if not character then return false end

        if character:IsOnMorphine() then
            client:notify("You are already under the effects of morphine.")
            return false
        end

        local healed = math.min(30, client:GetMaxHealth() - client:Health())
        client:SetHealth(client:Health() + healed)
        character:SetData("morphine", true)
        client:notify("You inject morphine. +" .. healed .. " HP. Pain resistance for 30 seconds.")

        timer.Simple(30, function()
            if IsValid(client) and client:GetCharacter() then
                client:GetCharacter():SetData("morphine", false)
                client:notify("The morphine has worn off.")
            end
        end)

        return true
    end
}
