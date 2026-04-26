
Schema.name        = "SCP: Roleplay"
Schema.author      = "SCP-RP Development Team"
Schema.description = "A heavy roleplay schema set in the SCP Foundation universe. Secure. Contain. Protect."

ix.util.Include("cl_schema.lua")
ix.util.Include("sv_schema.lua")

ix.util.Include("cl_hooks.lua")
ix.util.Include("sh_hooks.lua")
ix.util.Include("sv_hooks.lua")

ix.util.Include("meta/sh_character.lua")
ix.util.Include("meta/sh_player.lua")

-- Deduplicate attributes after the schema finishes loading.
-- Guards against the Helix base gamemode loading an overlapping attributes directory.
hook.Add("PostLoadSchema", "scprp_dedupe_attributes", function()
    local seen = {}
    for uniqueID, attr in pairs(ix.attributes.list) do
        if seen[attr.name] then
            ix.attributes.list[uniqueID] = nil
        else
            seen[attr.name] = uniqueID
        end
    end
end)
