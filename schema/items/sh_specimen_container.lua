
ITEM.name        = "Specimen Container"
ITEM.description = "A sealed biohazard container for transporting anomalous biological samples from testing. Proper containment prevents cross-contamination and data loss."
ITEM.model       = Model("models/props_lab/jar001.mdl")
ITEM.category    = "Research"
ITEM.width       = 1
ITEM.height      = 2
ITEM.noBusiness  = true

ITEM.functions.Collect = {
    tip   = "Collect a biological specimen",
    icon  = "icon16/magnifier.png",
    OnRun = function(item)
        local client    = item.player
        local character = client:GetCharacter()
        if not character then return false end

        if character:GetFaction() ~= FACTION_RESEARCH and character:GetFaction() ~= FACTION_MEDICAL then
            client:notify("Only authorised Research or Medical personnel may use specimen containers.")
            return false
        end

        if character:GetData("specimenCollected", false) then
            client:notify("This container already holds a specimen.")
            return false
        end

        character:SetData("specimenCollected", true)
        client:notify("Specimen collected and secured in the container.")
        return false
    end
}

ITEM.functions.Submit = {
    tip   = "Submit the specimen to the lab",
    icon  = "icon16/page_go.png",
    OnRun = function(item)
        local client    = item.player
        local character = client:GetCharacter()
        if not character then return false end

        if not character:GetData("specimenCollected", false) then
            client:notify("The container is empty. Collect a specimen first.")
            return false
        end

        character:SetData("specimenCollected", false)
        client:notify("Specimen submitted to the Foundation laboratory.")
        return true
    end
}
