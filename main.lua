


local keys = {
    "Banana-nana",
    "FiveDollor",
    "FreeKey"
}

local counter = 1
local keyCheck
for i,v in pairs(keys) do
    if counter == #keys then
        -- Not Vailed Key
        keys = ""
        game.Players.LocalPlayer:Kick("Not a Vailed Key")
    else
        if v == _G.Key then
                
        
        
        if game.PlaceId == 155615604 then
            loadstring(game:HttpGet("http://raw.githubusercontent.com/banana-nana/Banana-hub/main/src/Prisonlife.lua"))()
        end
        
        
        if game.PlaceId == 13822889 then
            loadstring(game:HttpGet("http://raw.githubusercontent.com/banana-nana/Banana-hub/main/src/LumberTycoon.lua"))()
            
        end
        
        
        if game.PlaceId == then
            loadstring(game:HttpGet("http://raw.githubusercontent.com/banan-nana/Banana-hub/main/src/"))()
        end
    
            keyCheck = _G.Key
            keys = ""
        else
            counter = counter +1
        end
    end
end

while true do
    if _G.Key == keyCheck then
        --not spoofed
    else
        game.Player.LocalPlayer:Kick("Bro Had to Spoof")
    end
    wait()
end

   game.StarterGui:SetCore("SendNotification", {
        Title = "Banana Hub v1.1.5";
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
            print("Added Keys From the start")
            print ("Added Settings -- Note that Only Level 7 can Save Settings")
            print("----------- Updated 7122 Jan 27")
            Changelog()
         end
       end
       
       local NotificationBindable = Instance.new("BindableFunction")
       NotificationBindable.OnInvoke = callback