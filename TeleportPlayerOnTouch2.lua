local teleport2 = script.Parent
local teleport1 = game.Workspace:FindFirstChild("Teleport1")
local TeleportCooldowns = require(game.Workspace:FindFirstChild("TeleportCooldowns"))

teleport2.Touched:Connect(function(hit)
    local character = hit.Parent
    local humanoid = character:FindFirstChild("Humanoid")
    if humanoid and teleport1 then
        if not TeleportCooldowns:IsOnCooldown(character) then
            local destinationCFrame = teleport1.CFrame + Vector3.new(0, 3, 0)
            destinationCFrame = CFrame.new(destinationCFrame.Position, destinationCFrame.Position + Vector3.new(0,0,-1))
            character:PivotTo(destinationCFrame)
            humanoid:ChangeState(Enum.HumanoidStateType.Physics)
            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
            TeleportCooldowns:SetCooldown(character, 3)
        end
    end
end)
