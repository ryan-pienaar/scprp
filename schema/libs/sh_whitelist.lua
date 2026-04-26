
ix.whitelist = ix.whitelist or {}
ix.whitelist.clientData = ix.whitelist.clientData or {}

-- Returns true if the player is allowed to join the given faction index.
-- Default factions are always open. Whitelisted factions require a server-granted entry.
function ix.whitelist.HasAccess(client, factionIndex)
    local factionList = ix.faction and ix.faction.list
    local faction = factionList and factionList[factionIndex]
    if not faction then return false end
    if faction.isDefault then return true end
    if not faction.isWhitelist then return true end

    if SERVER then
        return ix.whitelist.IsGranted(client:SteamID(), factionIndex)
    else
        return ix.whitelist.clientData[factionIndex] == true
    end
end
