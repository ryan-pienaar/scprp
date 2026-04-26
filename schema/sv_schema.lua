
-- Triggers a containment breach for the calling SCP player.
function Schema:BreachContainment(client)
    local character = client:GetCharacter()
    if not character or not character:IsSCP() then
        return false, "Only SCP entities may breach containment."
    end

    local scpNum = character:GetSCPNumber()
    if not scpNum then
        return false, "No SCP designation found for this character."
    end

    if ix.containment.IsBreached(scpNum) then
        return false, "SCP-" .. scpNum .. " has already breached containment."
    end

    ix.containment.Breach(scpNum, client)
    return true
end

-- Initiates a facility-wide lockdown. Requires Site Administration.
function Schema:InitiateLockdown(client)
    local character = client:GetCharacter()
    if not character or (not character:IsAdministration() and not client:IsAdmin()) then
        return false, "Insufficient authority to initiate lockdown."
    end

    ix.announcements.Broadcast(
        "SITE LOCKDOWN INITIATED. ALL PERSONNEL SHELTER IN PLACE. SECURE ALL CHECKPOINTS. AWAIT FURTHER ORDERS.",
        "ALERT"
    )
    hook.Run("SiteLockdown", client)
    return true
end

-- Lifts the facility lockdown. Requires Site Administration.
function Schema:LiftLockdown(client)
    local character = client:GetCharacter()
    if not character or (not character:IsAdministration() and not client:IsAdmin()) then
        return false, "Insufficient authority to lift lockdown."
    end

    ix.announcements.Broadcast(
        "LOCKDOWN LIFTED. FACILITY RETURNING TO NORMAL OPERATIONS. RESUME STANDARD PROTOCOLS.",
        "INFO"
    )
    hook.Run("SiteLockdownLifted", client)
    return true
end

-- Issues a PA announcement. Requires Site Administration or server admin.
function Schema:MakeAnnouncement(client, message, announcementType)
    local character = client:GetCharacter()
    if not character or (not character:IsAdministration() and not client:IsAdmin()) then
        return false, "Insufficient authority for PA system access."
    end

    ix.announcements.Broadcast(message, announcementType or "PA")
    return true
end

-- Releases a restrained character. Used by Security when releasing custody.
function Schema:ReleaseDetainee(client, target)
    if not IsValid(target) or not target:IsPlayer() then return false end

    local char = target:GetCharacter()
    if not char then return false end

    if not char:IsRestrained() then
        client:notify(target:Name() .. " is not currently restrained.")
        return false
    end

    char:SetData("restrained", false)
    target:SetRunSpeed(200)
    target:SetWalkSpeed(120)
    client:notify("You have released " .. target:Name() .. " from custody.")
    target:notify("You have been released from custody by " .. client:Name() .. ".")
    return true
end
