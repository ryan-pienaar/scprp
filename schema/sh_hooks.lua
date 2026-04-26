
-- Disable entity driving for all players.
function Schema:CanDrive(client, entity)
    return false
end

-- D-Class may not freely pick up weapons off the ground.
function Schema:PlayerCanPickupWeapon(client, weapon)
    if not IsValid(client) or not client:IsPlayer() then return nil end
    if client:IsDClass() then return false end
    return nil
end

-- Enforce movement restrictions on restrained characters.
function Schema:SetupMove(client, moveData)
    if client:IsRestrained() then
        moveData:SetMaxClientSpeed(50)
    end
end

-- Prevent restrained characters from attacking.
function Schema:PlayerShouldTakeDamage(client, attacker)
    return nil
end

-- Block class selection for factions the player is not whitelisted for.
-- Fires on both client (filters character creation UI) and server (enforces security).
function Schema:CanPlayerJoinClass(client, index, class)
    if not class or not class.faction then return end
    local factionList = ix.faction and ix.faction.list
    local faction = factionList and factionList[class.faction]
    if not faction or not faction.isWhitelist then return end

    if not ix.whitelist.HasAccess(client, class.faction) then
        return false
    end
end
