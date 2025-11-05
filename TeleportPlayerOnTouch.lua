local teleport1 = script.Parent
local teleport2 = game.Workspace:FindFirstChild("Teleport2")
local TeleportCooldowns = require(game.Workspace:FindFirstChild("TeleportCooldowns"))

teleport1.Touched:Connect(function(hit)
    local character = hit.Parent
    local humanoid = character:FindFirstChild("Humanoid")
    if humanoid and teleport2 then
        if not TeleportCooldowns:IsOnCooldown(character) then
            local destinationCFrame = teleport2.CFrame + Vector3.new(0, 3, 0)
            destinationCFrame = CFrame.new(destinationCFrame.Position, destinationCFrame.Position + Vector3.new(0,0,-1))
            character:PivotTo(destinationCFrame)
            humanoid:ChangeState(Enum.HumanoidStateType.Physics)
            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
            TeleportCooldowns:SetCooldown(character, 3)
        end
    end
end)
