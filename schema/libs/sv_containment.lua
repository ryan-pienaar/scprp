
if not SERVER then return end

ix.containment         = ix.containment or {}
ix.containment.breached = ix.containment.breached or {}

-- Marks an SCP as breached and triggers facility-wide alerts.
function ix.containment.Breach(scpNumber, client)
    if ix.containment.breached[scpNumber] then return end

    ix.containment.breached[scpNumber] = true

    ix.announcements.Broadcast(
        "CONTAINMENT BREACH — SCP-" .. scpNumber .. " HAS ESCAPED CONTAINMENT.",
        "ALERT"
    )

    hook.Run("SCPBreached", scpNumber, client)
end

-- Marks an SCP as re-contained.
function ix.containment.Contain(scpNumber, client)
    if not ix.containment.breached[scpNumber] then return end

    ix.containment.breached[scpNumber] = nil

    ix.announcements.Broadcast(
        "CONTAINMENT RESTORED — SCP-" .. scpNumber .. " HAS BEEN RE-CONTAINED.",
        "INFO"
    )

    hook.Run("SCPContained", scpNumber, client)

    if not next(ix.containment.breached) then
        ix.announcements.Broadcast(
            "ALL ANOMALIES CONTAINED. FACILITY STATUS: GREEN. RESUME NORMAL OPERATIONS.",
            "INFO"
        )
    end
end

-- Marks an SCP as terminated (permanently removed from breach tracking).
function ix.containment.Terminate(scpNumber, client)
    ix.containment.breached[scpNumber] = nil

    ix.announcements.Broadcast(
        "SCP-" .. scpNumber .. " HAS BEEN SUCCESSFULLY TERMINATED.",
        "INFO"
    )

    hook.Run("SCPTerminated", scpNumber, client)
end

-- Returns true if the specified SCP is currently breached.
function ix.containment.IsBreached(scpNumber)
    return ix.containment.breached[scpNumber] == true
end

-- Returns a list of all currently breached SCP numbers.
function ix.containment.GetBreached()
    local list = {}
    for scp in pairs(ix.containment.breached) do
        table.insert(list, scp)
    end
    return list
end

-- Returns a status string and associated colour for HUD display.
function ix.containment.GetStatus()
    local count = table.Count(ix.containment.breached)
    if count == 0 then
        return "SECURE",   Color(50,  255, 50)
    elseif count <= 2 then
        return "ELEVATED", Color(255, 200, 0)
    else
        return "CRITICAL", Color(255, 50,  50)
    end
end
