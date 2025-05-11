-- To make this script work, first get onto your motorcycle and execute the script.

local player = game:GetService("Players").LocalPlayer
local virtualuser = game:GetService("VirtualUser")

local function auto_farm()
    local character = player.Character
    if not character then return end

    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local car_weight = hrp:GetRootPart()
    if car_weight == hrp then return end
    
    local car = car_weight.Parent

    car.FrontSection:Destroy()
    car.RearSection:Destroy()

    while true do
        if hrp:GetRootPart() == hrp then break end
        hrp.AssemblyLinearVelocity = Vector3.new(0, 0, -2000)
        hrp.CFrame = CFrame.new(0, 9e5, 0)
        for i = 1, 100 do
            if hrp:GetRootPart() == hrp then break end
            hrp.AssemblyLinearVelocity = Vector3.new(0, 0, -2000)
            wait(0.1)
        end

        virtualuser:CaptureController()
        virtualuser:ClickButton2(Vector2.new())
    end
end

auto_farm()
