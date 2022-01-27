G.SettingTable = {
    setting1 = false;
    setting2 = false;
    setting3 = false;
}


print("Default-Settings")
for i,v in pairs(_G.SettingTable) do 
    print(i,v)
end