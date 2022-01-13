-- Thank you for using  banana hub
-- Github banana-nana









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
            module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
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

    	local Setting = Window:NewTab("Settings")
      local SettingS = Setting:NewSection("Settings")

      SettingS:NewKeybind("KeyBind", "To Hide", Enum.KeyCode.P, function()
          Library:ToggleUI()
      end)

print("Check Point 1 ")
      
      

end







if game.PlaceId == 13822889 then

    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Lumber Tycoon 2", "Midnight")
    

    
    local Player = Window:NewTab("Player")
    local PlayerS = Player:NewSection("Player")

    PlayerS:NewSlider("WalkSpeed", "Changes The Speed", 250, 0, function(v) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
    PlayerS:NewSlider("JumpPower", "Changes The JumpPower", 250, 0, function(v) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)



    PlayerS:NewToggle("Water Soild", "If you want ", function(state)
        if state then
            local value = true
            game:GetService("Workpace").Bridge.VerticalLiftBridge.WaterModel.Water.CanCollide = value
            game:GetService("Workspace").Water.CanCollide = value
        else
           local value = false
           game:GetService("Workpace").Bridge.VerticalLiftBridge.WaterModel.Water.CanCollide = value
           game:GetService("Workspace").Water.CanCollide = value
        end
    end)
    PlayerS:NewButton("All Blue Prints", "Gives all bluepritns", function()
        for _,v in pairs(game:GetService("ReplicatedStorage").Purchasables.Structures.BlueprintStructures:GetChildren()) do
            if game:GetService("Players").LocalPlayer.PlayerBlueprints.Blueprints:FindFirstChild(v.Name) == nil then
                local folder = Instance.new("Folder", game:GetService("Players").LocalPlayer.PlayerBlueprints.Blueprints)
                folder.Name = v.Name
                local category = Instance.new("StringValue", folder)
                category.Name = "ItemCategory"
                category.Value = v.ItemCategory.Value
            end
        end
    end)









    local Dupe = Window:NewTab("Dupes")
    local Dupes = Dupe:NewSection("Dupes")



    	local Setting = Window:NewTab("Settings")
      local SettingS = Setting:NewSection("Settings")

      SettingS:NewKeybind("KeyBind", "To Hide", Enum.KeyCode.P, function()
        Library:ToggleUI()
      end)  






      print("Check Point 2")
end



function NotSupported()
      local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Unknow Game", "Midnight")
    

    
    local Player = Window:NewTab("Player")
    local PlayerS = Player:NewSection("Player")

    PlayerS:NewSlider("WalkSpeed", "Changes The Speed", 250, 0, function(v) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
    PlayerS:NewSlider("JumpPower", "Changes The JumpPower", 250, 0, function(v) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)



    	local Setting = Window:NewTab("Settings")
      local SettingS = Setting:NewSection("Settings")

      SettingS:NewKeybind("KeyBind", "To Hide", Enum.KeyCode.P, function()
        Library:ToggleUI()
      end)  

    
end



local Creater = "Banana-nana on github"




game.StarterGui:SetCore("SendNotification", {
  Title = "Banana Hub v1";
  Text = "thanks 4 using it";
  Button1 = "Done";
  Duration = "4";
})

print("Last CheckPoint")
