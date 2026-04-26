
ix.keycard = ix.keycard or {}

-- Human-readable labels for each clearance level.
ix.keycard.labels = {
    [0] = "UNCLASSIFIED",
    [1] = "RESTRICTED",
    [2] = "CONFIDENTIAL",
    [3] = "SECRET",
    [4] = "TOP SECRET",
    [5] = "COSMIC TOP SECRET",
}

-- Returns the text label for a clearance level.
function ix.keycard.GetLabel(level)
    return ix.keycard.labels[level] or "UNKNOWN"
end

-- Returns the inherent clearance of a character based on their class definition.
function ix.keycard.GetClearance(character)
    if not character then return 0 end
    local class = ix.class.list[character:GetClass()]
    return (class and class.clearance) or 0
end

-- Returns the highest keycard level present in the character's inventory.
function ix.keycard.GetKeycardLevel(character)
    if not character then return 0 end

    local highest   = 0
    local inventory = character:GetInventory()
    if not inventory then return 0 end

    for _, item in pairs(inventory:GetItems()) do
        if item.clearanceLevel and item.clearanceLevel > highest then
            highest = item.clearanceLevel
        end
    end
    return highest
end

-- Returns the effective access level: max of inherent clearance and best held keycard.
function ix.keycard.GetEffectiveClearance(character)
    local inherent = ix.keycard.GetClearance(character)
    local card     = ix.keycard.GetKeycardLevel(character)
    return math.max(inherent, card)
end

-- Returns true if the character's effective clearance meets the required level.
function ix.keycard.CanAccess(character, level)
    return ix.keycard.GetEffectiveClearance(character) >= level
end

-- Called when a player swipes a physical keycard item.
function ix.keycard.TryAccess(client, cardLevel)
    if not IsValid(client) then return end

    local character = client:GetCharacter()
    if not character then return end

    local inherent  = ix.keycard.GetClearance(character)
    local effective = math.max(inherent, cardLevel)

    client:notify(
        "Keycard read. Effective clearance: Level " .. effective ..
        " [" .. ix.keycard.GetLabel(effective) .. "]."
    )
end
