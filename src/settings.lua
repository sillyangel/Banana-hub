-- Settings Should be 


game.StarterGui:SetCore("SendNotification", {
    Title = "Banana Hub v1";
    Text = "Yay v1";
    Button1 = "ChangeLog";
    Duration = "4";
    Callback = NotificationBindable;
  })

  function Changelog()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Banana Hub v1";
        Text = "Check Console!";
        Duration = "4";   
    })
  end

  local function callback(Text)
    if Text == "ChangeLog" then
        print("--Changelog--")
        print ("Added Settings -- Note that Only Level 7 can Save Settings")
        print("----------- Updated 2022 Jan 27")
        Changelog()
     end
   end
   
   local NotificationBindable = Instance.new("BindableFunction")
   NotificationBindable.OnInvoke = callback


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