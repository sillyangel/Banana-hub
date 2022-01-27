-- Thank you for using  banana hub
-- Github banana-nana



local SUPPORTED = 0

-- Games



if game.PlaceId == 155615604 then
    loadstring(game:HttpGet("http://raw.githubusercontent.com/banana-nana/Banana-hub/main/src/Prisonlife.lua"))()
end


if game.PlaceId == 13822889 then
    loadstring(game:HttpGet("http://raw.githubusercontent.com/banana-nana/Banana-hub/main/src/LumberTycoon.lua"))()
end

-- Place Holder 
if game.PlaceId == then
    loadstring(game:HttpGet("http://raw.githubusercontent.com/banan-nana/Banana-hub/main/src/"))()
end



-- IF NOT SUPPORTED



if SUPPORTED == 0 then
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
    
    game.StarterGui:SetCore("SendNotification", {
  Title = "Banana Hub v1";
  Text = "Game is not supported";
  Button1 = "";
  Duration = "4";
})





