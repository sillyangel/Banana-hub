_
G.Key = "Key1"

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