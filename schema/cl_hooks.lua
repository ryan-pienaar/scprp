
-- Welcome message with faction and clearance information.
function Schema:CharacterLoaded(character)
    local factionList = ix.faction and ix.faction.list
    local faction = factionList and factionList[character:GetFaction()]
    local level   = character:GetClearanceLevel()
    local label   = ix.keycard and ix.keycard.GetLabel(level) or "UNCLASSIFIED"

    LocalPlayer():ChatPrint(
        "Welcome, " .. character:GetName() ..
        ". Faction: " .. (faction and faction.name or "Unknown") ..
        " | Clearance: Level " .. level .. " [" .. label .. "]"
    )
end

-- Receive whitelisted faction data synced from the server.
net.Receive("scprp_whitelist_sync", function()
    ix.whitelist = ix.whitelist or {}
    ix.whitelist.clientData = net.ReadTable()
end)

-- Hide weapon ammo HUD for SCP entities — they don't use conventional weapons.
function Schema:HUDShouldDraw(element)
    local ply = LocalPlayer()
    if IsValid(ply) and ply:IsSCP() then
        if element == "CHudAmmo" or element == "CHudSecondaryAmmo" then
            return false
        end
    end
    return nil
end

-- Handle incoming PA announcements on the client side.
hook.Add("SCPAnnouncementReceived", "scprp_display_announcement", function(message, announcementType, color)
    -- Extended display logic can go here, e.g. a custom HUD toast.
    -- The chat message is already handled by the network receiver in sh_announcements.lua.
end)

-- NVG effect receiver.
if CLIENT then
    net.Receive("ix_scprp_nvg_toggle", function()
        local enabled = net.ReadBool()
        if enabled then
            hook.Add("RenderScreenspaceEffects", "scprp_nvg", function()
                DrawColorModify({
                    ["$pp_colour_addr"]       = 0,
                    ["$pp_colour_addg"]       = 0.08,
                    ["$pp_colour_addb"]       = 0,
                    ["$pp_colour_brightness"] = 0.1,
                    ["$pp_colour_contrast"]   = 1.2,
                    ["$pp_colour_colour"]     = 0.1,
                    ["$pp_colour_mulr"]       = 0,
                    ["$pp_colour_mulg"]       = 1,
                    ["$pp_colour_mulb"]       = 0,
                })
            end)
        else
            hook.Remove("RenderScreenspaceEffects", "scprp_nvg")
        end
    end)
end
