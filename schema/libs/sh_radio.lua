
ix.radio = ix.radio or {}

-- Channel number assigned to each faction. 0 = no radio access.
ix.radio.channels = {}

-- Channel names for display.
ix.radio.channelNames = {
    [0] = "None",
    [1] = "Security",
    [2] = "Research",
    [3] = "Medical",
    [4] = "Engineering",
    [5] = "Nu-7 Tactical",
    [6] = "E-11 Containment",
    [7] = "CI Encrypted",
    [8] = "Command (All)",
}

-- Called after factions load to populate channel assignments.
hook.Add("ixSchemaSHLoaded", "scprp_radio_init", function()
    ix.radio.channels = {
        [FACTION_DCLASS]          = 0,
        [FACTION_SECURITY]        = 1,
        [FACTION_RESEARCH]        = 2,
        [FACTION_MEDICAL]         = 3,
        [FACTION_ENGINEERING]     = 4,
        [FACTION_NU7]             = 5,
        [FACTION_E11]             = 6,
        [FACTION_CI]              = 7,
        [FACTION_SCP]             = 0,
        [FACTION_ADMINISTRATION]  = 8,
    }
end)

-- Returns the radio channel number for a faction index.
function ix.radio.GetChannel(factionIndex)
    return ix.radio.channels[factionIndex] or 0
end

-- Returns the display name of a channel number.
function ix.radio.GetChannelName(channel)
    return ix.radio.channelNames[channel] or "Unknown"
end

-- Returns true if the character can transmit on the given channel.
function ix.radio.CanAccessChannel(character, channel)
    if not character then return false end

    local faction = character:GetFaction()

    -- Site Administration can access all channels.
    if faction == FACTION_ADMINISTRATION then return true end

    return ix.radio.channels[faction] == channel
end
