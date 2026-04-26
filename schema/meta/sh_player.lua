
local PLAYER = FindMetaTable("Player")

function PLAYER:IsDClass()
    return self:Team() == FACTION_DCLASS
end

function PLAYER:IsFoundation()
    local t = self:Team()
    return t == FACTION_SECURITY     or
           t == FACTION_RESEARCH     or
           t == FACTION_MEDICAL      or
           t == FACTION_ENGINEERING  or
           t == FACTION_NU7          or
           t == FACTION_E11          or
           t == FACTION_ADMINISTRATION
end

function PLAYER:IsSCP()
    return self:Team() == FACTION_SCP
end

function PLAYER:IsCI()
    return self:Team() == FACTION_CI
end

function PLAYER:IsMTF()
    return self:Team() == FACTION_NU7 or self:Team() == FACTION_E11
end

function PLAYER:IsSecurity()
    return self:Team() == FACTION_SECURITY
end

function PLAYER:IsResearcher()
    return self:Team() == FACTION_RESEARCH
end

function PLAYER:IsMedical()
    return self:Team() == FACTION_MEDICAL
end

function PLAYER:IsAdministration()
    return self:Team() == FACTION_ADMINISTRATION
end

function PLAYER:GetClearanceLevel()
    local char = self:GetCharacter()
    return char and char:GetClearanceLevel() or 0
end

function PLAYER:CanAccess(level)
    local char = self:GetCharacter()
    return char and char:CanAccess(level) or false
end

function PLAYER:IsRestrained()
    local char = self:GetCharacter()
    return char and char:IsRestrained() or false
end
