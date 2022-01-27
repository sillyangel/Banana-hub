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
            local WaterSoildL = true
            WaterSoild()
        else
           local WaterSoildL = false
           WaterSoild()
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

      game.StarterGui:SetCore("SendNotification", {
        Title = "Banana Hub v1";
        Text = "Yay v1";
        Button1 = "ChangeLog";
        Duration = "4";
        Callback = NotificationBindable;
      })


      local function callback(Text)
        if Text == "Button1 text" then
         print ("")
       elseif Text == ("Button2 text") then
        print ("")
        end
       end
       
       local NotificationBindable = Instance.new("BindableFunction")
       NotificationBindable.OnInvoke = callback
       --       game.StarterGui:SetCore("SendNotification",  {        Title = "Title";        Text = "Description";        Icon = "";        Duration = 5;        Button1 = "Button1 text";        Button2 = "Button2 text";       })



      -- Settings and Functions

      local filename = "LumberTycoon_Settings.txt";



      G.SettingTable = {
        WaterSoildL = false;
        setting2 = false;
        setting3 = false;
    }
    
    
    print("Default-Settings")
    for i,v in pairs(_G.SettingTable) do 
        print(i,v)
    end

    function loadsettings()
        print("Loading Settings")
        local HttpService = game:GetService("HttpService")
        if (readfile and isfile and isfile(filename)) then 
            _G.SettingTable = HttpService:JSONDecode(readfile(filename));
            print("settings Loaded")
            print("Settings Are")
            for i,v in pairs(_G.SettingTable) do
                print(i,v)
            end
        end 
    end

    function saveSettings() 
        print("Saving Settings")
        local json;
        local HttpService = game:GetService("HttpService");
        if (writefile) then
            json = HttpService:JSONEncode(_G.SettingTable);
            writefile(filename, json)
            else
                print(" -- Sorry Cant Save Settings Due to Executor")
        end
    end
    
    loadsettings()

    function WaterSoild() 
        saveSettings()
        if WaterSoildL == true then 
            game:GetService("Workpace").Bridge.VerticalLiftBridge.WaterModel.Water.CanCollide = value
            game:GetService("Workspace").Water.CanCollide = value
        end
        if WaterSoildL == false then 
            game:GetService("Workpace").Bridge.VerticalLiftBridge.WaterModel.Water.CanCollide = value
            game:GetService("Workspace").Water.CanCollide = value
        end
    end