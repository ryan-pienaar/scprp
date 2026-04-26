
-- Returns the color of the local player's current faction.
function Schema:GetFactionColor()
    local ply = LocalPlayer()
    if not IsValid(ply) then return color_white end

    local faction = ix.faction.list[ply:Team()]
    return faction and faction.color or color_white
end

-- Returns a formatted clearance string for HUD display.
function Schema:GetClearanceString()
    local ply = LocalPlayer()
    if not IsValid(ply) then return "Level 0 [UNCLASSIFIED]" end

    local char = ply:GetCharacter()
    if not char then return "Level 0 [UNCLASSIFIED]" end

    local level = char:GetClearanceLevel()
    local label = ix.keycard and ix.keycard.GetLabel(level) or "UNCLASSIFIED"
    return "Level " .. level .. " [" .. label .. "]"
end

-- Returns a formatted status string for the containment situation.
function Schema:GetContainmentStatusString()
    if not ix.containment then return "SECURE" end
    local status, _ = ix.containment.GetStatus()
    return status
end
