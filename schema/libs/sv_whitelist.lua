
util.AddNetworkString("scprp_whitelist_sync")

sql.Query([[
    CREATE TABLE IF NOT EXISTS scprp_whitelist (
        steamid TEXT NOT NULL,
        faction INTEGER NOT NULL,
        PRIMARY KEY (steamid, faction)
    )
]])

function ix.whitelist.IsGranted(steamID, factionIndex)
    local result = sql.Query(
        "SELECT 1 FROM scprp_whitelist WHERE steamid = " .. sql.SQLStr(steamID) ..
        " AND faction = " .. factionIndex
    )
    return result ~= nil and result[1] ~= nil
end

local function SyncToClient(client)
    local rows = sql.Query(
        "SELECT faction FROM scprp_whitelist WHERE steamid = " .. sql.SQLStr(client:SteamID())
    )
    local data = {}
    if rows then
        for _, row in ipairs(rows) do
            data[tonumber(row.faction)] = true
        end
    end
    net.Start("scprp_whitelist_sync")
    net.WriteTable(data)
    net.Send(client)
end

hook.Add("PlayerInitialSpawn", "scprp_whitelist_sync", function(client)
    timer.Simple(2, function()
        if IsValid(client) then SyncToClient(client) end
    end)
end)

function ix.whitelist.Grant(admin, target, factionIndex)
    sql.Query(
        "INSERT OR IGNORE INTO scprp_whitelist (steamid, faction) VALUES (" ..
        sql.SQLStr(target:SteamID()) .. ", " .. factionIndex .. ")"
    )

    local faction = ix.faction and ix.faction.list and ix.faction.list[factionIndex]
    local name = faction and faction.name or tostring(factionIndex)

    if IsValid(target) then
        SyncToClient(target)
        target:notify("You have been whitelisted for " .. name .. ".")
    end
    if IsValid(admin) then
        admin:notify("Granted " .. target:Name() .. " whitelist for " .. name .. ".")
    end
end

function ix.whitelist.Revoke(admin, target, factionIndex)
    sql.Query(
        "DELETE FROM scprp_whitelist WHERE steamid = " ..
        sql.SQLStr(target:SteamID()) .. " AND faction = " .. factionIndex
    )

    local faction = ix.faction and ix.faction.list and ix.faction.list[factionIndex]
    local name = faction and faction.name or tostring(factionIndex)

    if IsValid(target) then
        SyncToClient(target)
        target:notify("Your whitelist for " .. name .. " has been revoked.")
    end
    if IsValid(admin) then
        admin:notify("Revoked " .. target:Name() .. "'s whitelist for " .. name .. ".")
    end
end

-- Chat commands for admins: !whitelist add/remove/list <player> [faction]
hook.Add("PlayerSay", "scprp_whitelist_cmd", function(client, text)
    if not client:IsAdmin() then return end
    if not text:lower():StartWith("!whitelist") then return end

    local args = string.Explode(" ", text, true)
    local action = args[2] and args[2]:lower()

    if not action or (action ~= "add" and action ~= "remove" and action ~= "list") then
        client:ChatPrint("[Whitelist] Usage: !whitelist add/remove/list <player> [faction]")
        return ""
    end

    local targetName = args[3]
    if not targetName then
        client:ChatPrint("[Whitelist] Specify a player name.")
        return ""
    end

    local target
    for _, ply in ipairs(player.GetAll()) do
        if ply:Name():lower():find(targetName:lower(), 1, true) then
            target = ply
            break
        end
    end

    if not target then
        client:ChatPrint("[Whitelist] Player not found: " .. targetName)
        return ""
    end

    if action == "list" then
        local rows = sql.Query(
            "SELECT faction FROM scprp_whitelist WHERE steamid = " .. sql.SQLStr(target:SteamID())
        )
        if not rows or #rows == 0 then
            client:ChatPrint("[Whitelist] " .. target:Name() .. " has no whitelists.")
        else
            local names = {}
            for _, row in ipairs(rows) do
                local f = ix.faction.list[tonumber(row.faction)]
                names[#names + 1] = f and f.name or row.faction
            end
            client:ChatPrint("[Whitelist] " .. target:Name() .. ": " .. table.concat(names, ", "))
        end
        return ""
    end

    local factionArg = table.concat(args, " ", 4):lower()
    if factionArg == "" then
        client:ChatPrint("[Whitelist] Specify a faction name.")
        return ""
    end

    local factionIndex
    for k, v in pairs(ix.faction.list) do
        if v.name:lower():find(factionArg, 1, true) then
            factionIndex = k
            break
        end
    end

    if not factionIndex then
        client:ChatPrint("[Whitelist] Faction not found: " .. factionArg)
        return ""
    end

    if action == "add" then
        ix.whitelist.Grant(client, target, factionIndex)
    else
        ix.whitelist.Revoke(client, target, factionIndex)
    end

    return ""
end)
