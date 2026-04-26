
ITEM.name        = "Anomaly Scanner"
ITEM.description = "A handheld device designed by Foundation researchers to detect and measure anomalous energy fields. Used to locate SCPs and identify contaminated areas."
ITEM.model       = Model("models/props_lab/measuringcup.mdl")
ITEM.category    = "Research"
ITEM.width       = 1
ITEM.height      = 2
ITEM.noBusiness  = true

ITEM.functions.Scan = {
    tip   = "Scan the area for anomalous signatures",
    icon  = "icon16/chart_bar.png",
    OnRun = function(item)
        local client    = item.player
        local character = client:GetCharacter()
        if not character then return false end

        if not character:IsFoundation() then
            client:notify("You do not know how to operate this device.")
            return false
        end

        local scpsNearby = {}
        local scanRadius = 1200

        for _, ply in ipairs(player.GetAll()) do
            if ply ~= client and IsValid(ply) and ply:IsSCP() then
                local d    = math.Round(ply:GetPos():Distance(client:GetPos()))
                local char = ply:GetCharacter()
                if char and d <= scanRadius then
                    local scpNum = char:GetSCPNumber() or "Unknown"
                    table.insert(scpsNearby, "SCP-" .. scpNum .. " (" .. d .. "u)")
                end
            end
        end

        if #scpsNearby > 0 then
            client:notify("Anomalous signatures detected: " .. table.concat(scpsNearby, ", "))
        else
            client:notify("No anomalous signatures detected within range.")
        end

        return false
    end
}
