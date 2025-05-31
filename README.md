# Roblox-HackKit
Hacks for life. :D

Discord (Roblox Exploiters Hangout): https://discord.gg/87RukNzFYX

Please leave a star for support. 💖

# Hack Kit
Fly Script (PC) - https://github.com/lilmond/roblox_fly_script

Reviz Admin - https://github.com/lilmond/Reviz-Admin

Unnamed ESP - https://github.com/lilmond/Unnamed-ESP

Aimbot Lite - https://github.com/lilmond/Aimbot-Lite

Aimbot V3 - https://github.com/lilmond/Aimbot-V3

# Specific Game Scripts And Experimentals
Bloxburg Autofarm (ANY FLATFORM) (REQUIRES 99%+ UNC EXECUTOR) - https://github.com/lilmond/Bloxburg-Autofarm

Da Hood Global Shop - https://github.com/lilmond/DaHood-GlobalShop

Murderers Vs Sherrifs Kill All (ONLY WORKS AS A MURDERER TEAM) - https://github.com/lilmond/MVS-Exploit

Fe Magneto (Experimental) - https://github.com/lilmond/roblox_fe_magneto

Build A Boat For Treasure Autofarm - https://github.com/lilmond/BABFT_Autofarm

## My Loader
Don't ask what this is lol

```lua
local kits = {
    -- FLY SCRIPT
    "https://raw.githubusercontent.com/lilmond/roblox_fly_script/refs/heads/main/latest.lua",
    -- REVIZ ADMIN (UNDETECTED)
    "https://github.com/lilmond/Reviz-Admin/raw/refs/heads/main/reviz_admin_undetected.lua",
    -- UNNAMED ESP
    "https://raw.githubusercontent.com/lilmond/Unnamed-ESP/refs/heads/master/UnnamedESP.lua",
    -- FLING
    "https://raw.githubusercontent.com/lilmond/roblox_fly_script/refs/heads/main/fling_v1.5.lua"
}

local whiteOnly = false
local whiteLists = {
    
}

local function isWhiteListed()
    for i, v in pairs(whiteLists) do
        if string.lower(v) == string.lower(game.Players.LocalPlayer.Name) then
            return true
        end
    end

    return false
end

local function executeKit()
    if getgenv().KIT_EXECUTED then return end
    getgenv().KIT_EXECUTED = true

    for i, v in pairs(kits) do
        coroutine.wrap(function()
            pcall(function() loadstring(game:HttpGet(v))() end)
        end)()
    end
end

local function main()
    local whiteListed = isWhiteListed()
    if whiteOnly then
        if (not whiteListed) then return end
    else
        if whiteListed then return end
    end

    executeKit()
end


main()
```
