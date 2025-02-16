print("==================================================================================================================")

local follower = game.Players.subwooferkitty.Character.HumanoidRootPart
local rotation = 0.0
game:GetService("RunService").Heartbeat:Connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Position = Vector3.new(follower.Position.X + 7 * math.sin(rotation), follower.Position.Y + 7, follower.Position.Z + 7 * math.cos(rotation))
    -- print(math.sin(rotation))
    -- print(rotation)
    rotation += 0.05
    if (rotation >= 2 * math.pi) then
        rotation -= 2 * math.pi
    end
end)