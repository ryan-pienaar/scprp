
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
