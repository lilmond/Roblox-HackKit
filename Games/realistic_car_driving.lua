-- Credits: github@lilmond
-- How to use: Get into your car first before executing this script
-- Discord (Roblox Exploiters Hangout): https://discord.gg/87RukNzFYX

local player = game:GetService("Players").LocalPlayer
local virtualuser = game:GetService("VirtualUser")

local function auto_farm()
    local character = player.Character
    if not character then return end

    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local car_weight = hrp:GetRootPart()
    if car_weight == hrp then return end
    
    local car = car_weight.Parent.Parent

    for i, wheel in pairs(car.Wheels:GetChildren()) do
        wheel:Destroy()
    end

    while true do
        if hrp:GetRootPart() == hrp then break end
        hrp.AssemblyLinearVelocity = Vector3.new(0, 1000, 0)
        hrp.CFrame = CFrame.new(0, 9e4, 0)
        for i = 1, 100 do
            if hrp:GetRootPart() == hrp then break end
            hrp.AssemblyLinearVelocity = Vector3.new(0, 1000, 0)
            wait(0.1)
        end

        virtualuser:CaptureController()
        virtualuser:ClickButton2(Vector2.new())
    end
end

auto_farm()
