RegisterCommand("traffic", function() 
    WarMenu.OpenMenu('menu:main')
end)

function ShowNotification( text )
    SetNotificationTextEntry("STRING")
    AddTextComponentSubstringPlayerName(text)
    DrawNotification(false, false)
end

local sz = nil


RegisterNetEvent('slowtraffic')
AddEventHandler('slowtraffic', function()

if sz ~= nil then 
RemoveSpeedZone(sz)
ShowNotification("Traffic ~g~Resumed")
sz = nil
RemoveBlip(tcblip)
else
ShowNotification("Traffic ~y~Slowed")
tcblip = AddBlipForRadius(GetEntityCoords(GetPlayerPed(-1)),40.0)
SetBlipAlpha(tcblip,80)
SetBlipColour(tcblip,5)
sz = AddSpeedZoneForCoord(GetEntityCoords(GetPlayerPed(-1)),40.0,5.0,false)

end

end)
RegisterNetEvent('resumetraffic')
AddEventHandler('resumetraffic', function()
if sz ~= nil then 
RemoveSpeedZone(sz)
ShowNotification("Traffic ~g~Resumed")
sz = nil
RemoveBlip(tcblip)

end
end)
RegisterNetEvent('stoptraffic')
AddEventHandler('stoptraffic', function()

if sz ~= nil then 
RemoveSpeedZone(sz)
ShowNotification("Traffic ~g~Resumed")
sz = nil
RemoveBlip(tcblip)
else
ShowNotification("Traffic ~r~Stopped")
tcblip = AddBlipForRadius(GetEntityCoords(GetPlayerPed(-1)),50.0)
sz = AddSpeedZoneForCoord(GetEntityCoords(GetPlayerPed(-1)),50.0,0.0,false)
SetBlipAlpha(tcblip,80)
SetBlipColour(tcblip,1)

end

end)
AddSpeedZoneForCoord(236.2,6565.1,31.5,40.0,20.0,false)
AddSpeedZoneForCoord(161.2,6544.5,31.8,40.0,10.0,false)