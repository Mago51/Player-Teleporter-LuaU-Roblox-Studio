local TeleportCooldowns = {}

local cooldowns = {}

function TeleportCooldowns:IsOnCooldown(character)
    return cooldowns[character] == true
end

function TeleportCooldowns:SetCooldown(character, duration)
    cooldowns[character] = true
    task.delay(duration, function()
        cooldowns[character] = nil
    end)
end

return TeleportCooldowns
