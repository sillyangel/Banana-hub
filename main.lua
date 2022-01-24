-- Thank you for using  banana hub
-- Github banana-nana





-- 



if game.PlaceId == 155615604 then
    
end







if game.PlaceId == 13822889 then
    
end

if game.PlaceId == then
    
end


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
    
    

    
    game.StarterGui:SetCore("SendNotification", {
  Title = "Banana Hub";
  Text = "Game is not supported";
  Button1 = "";
  Duration = "4";
})





