
ix.announcements = ix.announcements or {}

ix.announcements.types = {
    INFO    = { prefix = "[INFO]",    color = Color(100, 200, 255) },
    ALERT   = { prefix = "[ALERT]",   color = Color(255, 50,  50)  },
    WARNING = { prefix = "[WARNING]", color = Color(255, 200, 0)   },
    PA      = { prefix = "[P.A.]",    color = Color(200, 200, 200) },
}

if SERVER then
    util.AddNetworkString("ix_scprp_announcement")
    util.AddNetworkString("ix_scprp_nvg_toggle")

    -- Broadcasts a PA/alert message to every player on the server.
    function ix.announcements.Broadcast(message, announcementType)
        announcementType = announcementType or "INFO"

        net.Start("ix_scprp_announcement")
            net.WriteString(message)
            net.WriteString(announcementType)
        net.Broadcast()

        hook.Run("SCPAnnouncement", message, announcementType)
    end

    -- Broadcasts a message only to players belonging to a specific faction.
    function ix.announcements.BroadcastFaction(message, announcementType, factionIndex)
        announcementType = announcementType or "INFO"

        for _, ply in ipairs(player.GetAll()) do
            if ply:Team() == factionIndex then
                net.Start("ix_scprp_announcement")
                    net.WriteString(message)
                    net.WriteString(announcementType)
                net.Send(ply)
            end
        end
    end

    -- Broadcasts to a single player.
    function ix.announcements.BroadcastPlayer(client, message, announcementType)
        announcementType = announcementType or "INFO"

        if not IsValid(client) then return end

        net.Start("ix_scprp_announcement")
            net.WriteString(message)
            net.WriteString(announcementType)
        net.Send(client)
    end
end

if CLIENT then
    net.Receive("ix_scprp_announcement", function()
        local message          = net.ReadString()
        local announcementType = net.ReadString()

        local info = ix.announcements.types[announcementType] or ix.announcements.types.INFO

        chat.AddText(info.color, info.prefix .. " " .. message)
        MsgC(info.color, "[SCPRP] " .. info.prefix .. " " .. message .. "\n")

        hook.Run("SCPAnnouncementReceived", message, announcementType, info.color)
    end)
end
