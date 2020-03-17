Citizen.CreateThread(function()
    local player = GetPlayerPed(-1)
    local currentItemIndex = 1
    local selectedItemIndex = 1
    WarMenu.CreateMenu('menu:main', '🚦')
    WarMenu.SetTitleBackgroundColor('menu:main', 15, 60, 125, 255)
    WarMenu.SetTitleColor('menu:main', 255, 255, 255, 255)

    while true do
        if WarMenu.IsMenuOpened('menu:main') then
			if WarMenu.MenuButton('~r~Stop ~w~Traffic', 'menu:main') then
                TriggerEvent("stoptraffic")
            elseif WarMenu.Button('~y~Slow ~w~Traffic') then
                TriggerEvent("slowtraffic")
            elseif WarMenu.Button('~g~Resume ~w~Traffic') then
                TriggerEvent("resumetraffic")

            end

            WarMenu.Display()
        elseif IsDisabledControlJustPressed(1, KEYBIND) then -- *OPTIONAL* You can change 'KEYBIND' with an ID from here: https://docs.fivem.net/docs/game-references/controls/
            WarMenu.OpenMenu('menu:main')
        end
         
        Citizen.Wait(0)
    end
end)