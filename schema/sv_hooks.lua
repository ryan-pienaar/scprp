
-- Apply class health/armor and faction-specific setup when a character loads.
function Schema:PlayerLoadedCharacter(client, character, lastCharacter)
    local class = ix.class.list[character:GetClass()]

    if class then
        if class.health then
            client:SetMaxHealth(class.health)
            client:SetHealth(class.health)
        end
        if class.armor then
            client:SetArmor(class.armor)
        end
    end

    if character:IsSCP() then
        local scpNum = character:GetSCPNumber()
        if scpNum then
            ix.announcements.BroadcastFaction(
                "SCP-" .. scpNum .. " is now in containment. Monitor status.",
                "INFO",
                FACTION_SECURITY
            )
            ix.announcements.BroadcastFaction(
                "SCP-" .. scpNum .. " entered containment. Standby for orders.",
                "INFO",
                FACTION_E11
            )
        end
    end
end

-- Reset transient character data on spawn.
function Schema:PlayerSpawn(client)
    local character = client:GetCharacter()
    if not character then return end

    character:SetData("morphine", false)
    character:SetData("restrained", false)

    -- Restore SCP health to class maximum on each spawn.
    if client:IsSCP() then
        local class = ix.class.list[character:GetClass()]
        if class and class.health then
            client:SetMaxHealth(class.health)
            client:SetHealth(class.health)
        end
    end
end

-- Custom death sounds per faction.
function Schema:GetPlayerDeathSound(client)
    if client:IsSCP() then
        return "ambient/levels/labs/electric_explosion1.wav"
    end
    if client:IsMTF() then
        return "npc/combine_soldier/die1.wav"
    end
    if client:IsCI() then
        return "npc/combine_soldier/die1.wav"
    end
end

-- Handle deaths: re-contain SCPs, log D-Class casualties.
function Schema:PlayerDeath(client, inflictor, attacker)
    local character = client:GetCharacter()
    if not character then return end

    if character:IsSCP() then
        local scpNum = character:GetSCPNumber()
        if scpNum and ix.containment then
            ix.containment.Contain(scpNum, attacker)
        end
    end

    if character:IsDClass() then
        if IsValid(attacker) and attacker:IsPlayer() and attacker:IsCI() then
            ix.announcements.BroadcastFaction(
                "D-Class personnel terminated by external hostile. Possible CI activity.",
                "WARNING",
                FACTION_SECURITY
            )
        end
    end
end

-- Prevent restrained players from dealing damage.
function Schema:ScalePlayerDamage(client, hitGroup, damageInfo)
    if client:IsRestrained() then
        damageInfo:SetDamage(0)
    end
end

-- When an SCP breaches, alert response units.
hook.Add("SCPBreached", "scprp_breach_response", function(scpNumber, client)
    ix.announcements.BroadcastFaction(
        "SCP-" .. scpNumber .. " IS LOOSE. ALL E-11 RESPOND IMMEDIATELY.",
        "ALERT",
        FACTION_E11
    )
    ix.announcements.BroadcastFaction(
        "SCP-" .. scpNumber .. " CONTAINMENT BREACH. SUPPORT E-11 AS DIRECTED. LOCK DOWN D-BLOCK.",
        "ALERT",
        FACTION_NU7
    )
    ix.announcements.BroadcastFaction(
        "SCP-" .. scpNumber .. " BREACH DETECTED. ALL D-CLASS TO CELLS IMMEDIATELY.",
        "ALERT",
        FACTION_SECURITY
    )
end)
