-- Author: https://github.com/lilmond

-- Set this to either true or false to start/stop the script.
getgenv().AUTOWIN = true

local player = game.Players.LocalPlayer
local part = workspace.Points.End

while getgenv().AUTOWIN do
    local character = player.Character or player.CharacterAdded:Wait()
    local hrp = character:FindFirstChild("HumanoidRootPart") or character:WaitForChild("HumanoidRootPart")
    local humanoid = character:FindFirstChild("Humanoid") or character:WaitForChild("Humanoid")

    firetouchinterest(hrp, part, 0)

    wait(1)

    humanoid.Health = 0

    wait(1)
end
