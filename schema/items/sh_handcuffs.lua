
ITEM.name        = "Restraints"
ITEM.description = "Standard-issue zip-tie restraints. Used by Security to detain D-Class and hostile individuals. Significantly limits the target's movement speed."
ITEM.model       = Model("models/weapons/w_pistol.mdl")
ITEM.category    = "Equipment"
ITEM.width       = 1
ITEM.height      = 1
ITEM.noBusiness  = true

ITEM.functions.Restrain = {
    tip   = "Restrain a nearby player",
    icon  = "icon16/lock.png",
    OnRun = function(item)
        local client = item.player

        local target, dist = nil, 120
        for _, ply in ipairs(player.GetAll()) do
            if ply ~= client and IsValid(ply) then
                local d = ply:GetPos():Distance(client:GetPos())
                if d < dist then
                    target = ply
                    dist   = d
                end
            end
        end

        if not target then
            client:notify("No one in range to restrain.")
            return false
        end

        local targetChar = target:GetCharacter()
        if not targetChar then return false end

        if targetChar:IsRestrained() then
            client:notify(target:Name() .. " is already restrained.")
            return false
        end

        targetChar:SetData("restrained", true)
        target:SetRunSpeed(50)
        target:SetWalkSpeed(50)
        client:notify("You have restrained " .. target:Name() .. ".")
        target:notify("You have been restrained by " .. client:Name() .. ".")
        return false
    end
}

ITEM.functions.Release = {
    tip   = "Release a restrained player",
    icon  = "icon16/lock_open.png",
    OnRun = function(item)
        local client = item.player

        local target, dist = nil, 120
        for _, ply in ipairs(player.GetAll()) do
            if ply ~= client and IsValid(ply) and ply:IsRestrained() then
                local d = ply:GetPos():Distance(client:GetPos())
                if d < dist then
                    target = ply
                    dist   = d
                end
            end
        end

        if not target then
            client:notify("No restrained players in range.")
            return false
        end

        local targetChar = target:GetCharacter()
        if not targetChar then return false end

        targetChar:SetData("restrained", false)
        target:SetRunSpeed(200)
        target:SetWalkSpeed(120)
        client:notify("You have released " .. target:Name() .. " from custody.")
        target:notify("You have been released from custody by " .. client:Name() .. ".")
        return false
    end
}
