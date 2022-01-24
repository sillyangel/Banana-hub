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



    PlayerS:NewToggle("Water Soild", "True or false State ment", function(state)
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






      print("LumberTycoon")
