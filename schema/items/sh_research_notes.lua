
ITEM.name        = "Research Document"
ITEM.description = "A bound document for recording SCP interactions, experimental observations, and test results. Required for formal submission of findings to the Foundation database."
ITEM.model       = Model("models/props_lab/binderblue.mdl")
ITEM.category    = "Research"
ITEM.width       = 1
ITEM.height      = 1
ITEM.price       = 2

ITEM.functions.Write = {
    tip   = "Record your observations",
    icon  = "icon16/pencil.png",
    OnRun = function(item)
        local client    = item.player
        local character = client:GetCharacter()
        if not character then return false end

        character:SetData("documenting", true)
        client:notify("You record your observations in the document.")
        return false
    end
}

ITEM.functions.Submit = {
    tip   = "Submit the research findings to the Foundation database",
    icon  = "icon16/page_go.png",
    OnRun = function(item)
        local client    = item.player
        local character = client:GetCharacter()
        if not character then return false end

        if not character:GetData("documenting", false) then
            client:notify("The document is empty. Record your observations first.")
            return false
        end

        character:SetData("documenting", false)
        client:notify("Research findings submitted to the Foundation database.")
        return true
    end
}
