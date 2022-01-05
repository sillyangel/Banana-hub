if game.PlaceId == 155615604 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Prison Life", "Midnight")
    
    local Main = Window:NewTab("Main")
    local MainS = Main:NewSection("Main")
    MainS:NewDropdown("Give Gun", "Give you a gun", {"M9", "Remington 870", "AK-47"}, function(v)
        local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
        local Event = game:GetService("Workspace").Remote.ItemHandler
        Event:InvokeServer(A_1)
    end)
    
    MainS:NewDropdown("Gun Mod", "makes the gun op", {"M9", "Remington 870", "AK-47"}, function(v)
        local module = nil
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Backpack[v].FindFirstChild(v).GunStates)
        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)   
        end
        if module ~= nil then
            module["MaxAmmo"] = math.huge
            module["CurrentAmmo"] = math.huge
            module["StoredAmmo"] = math.huge
            module["FireRate"] = 0.000001
            module["Spread"] = 0
            module["Range"] = math.huge
            module["Bullets"] = 10
            module["ReloadTime"] = 0.000001
            module["AutoFire"] = true
        end
    end)
    local Player = Window:NewTab("Player")
    local PlayerS = Player:NewSection("Player")

    PlayerS:NewSlider("WalkSpeed", "Changes The Speed", 250, 0, function(v) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
    PlayerS:NewSlider("JumpPower", "Changes The JumpPower", 250, 0, function(v) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)

else
    print("This game is not Supported")
end







