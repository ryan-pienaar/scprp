
local CHAR = ix.meta.character

-- Clearance helpers.
function CHAR:GetClearanceLevel()
    return ix.keycard.GetClearance(self)
end

function CHAR:GetEffectiveClearance()
    return ix.keycard.GetEffectiveClearance(self)
end

function CHAR:CanAccess(level)
    return ix.keycard.CanAccess(self, level)
end

-- Faction identity checks.
function CHAR:IsDClass()
    return self:GetFaction() == FACTION_DCLASS
end

function CHAR:IsFoundation()
    local f = self:GetFaction()
    return f == FACTION_SECURITY     or
           f == FACTION_RESEARCH     or
           f == FACTION_MEDICAL      or
           f == FACTION_ENGINEERING  or
           f == FACTION_NU7          or
           f == FACTION_E11          or
           f == FACTION_ADMINISTRATION
end

function CHAR:IsSCP()
    return self:GetFaction() == FACTION_SCP
end

function CHAR:IsCI()
    return self:GetFaction() == FACTION_CI
end

function CHAR:IsMTF()
    local f = self:GetFaction()
    return f == FACTION_NU7 or f == FACTION_E11
end

function CHAR:IsSecurity()
    return self:GetFaction() == FACTION_SECURITY
end

function CHAR:IsResearcher()
    return self:GetFaction() == FACTION_RESEARCH
end

function CHAR:IsMedical()
    return self:GetFaction() == FACTION_MEDICAL
end

function CHAR:IsAdministration()
    return self:GetFaction() == FACTION_ADMINISTRATION
end

-- Returns the SCP designation number (e.g. "173") or nil.
function CHAR:GetSCPNumber()
    local class = ix.class.list[self:GetClass()]
    return class and class.scpNumber or nil
end

function CHAR:IsSCPNumber(number)
    return self:GetSCPNumber() == tostring(number)
end

-- Restraint state.
function CHAR:IsRestrained()
    return self:GetData("restrained", false)
end

-- Radio state.
function CHAR:GetRadioChannel()
    return ix.radio.GetChannel(self:GetFaction())
end

function CHAR:HasRadioActive()
    return self:GetData("radio", false)
end

-- Morphine effect state.
function CHAR:IsOnMorphine()
    return self:GetData("morphine", false)
end
