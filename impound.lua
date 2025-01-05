local deleteTimer = 100 --time in Minutes

CreateThread(function()
    while true do
        TriggerClientEvent('ox_lib:notify', -1, { title = 'DVALL SYSTEM', type = 'inform', description = 'All the vehicles will be removed in 30 seconds',  position = 'top' })
        Wait(15000)
        TriggerClientEvent('ox_lib:notify', -1, { title = 'DVALL SYSTEM', type = 'inform', description = 'All the vehicles will be removed in 15 seconds',  position = 'top' })
        Wait(10000)
        TriggerClientEvent('ox_lib:notify', -1, { title = 'DVALL SYSTEM', type = 'inform', description = 'All the vehicles will be removed in 10 seconds',  position = 'top' })
        Wait(5000)
        TriggerClientEvent('ox_lib:notify', -1, { title = 'DVALL SYSTEM', type = 'inform', description = 'All the vehicles will be removed in 5 seconds',  position = 'top' })
        Wait(5000)

        for i, veh in pairs(GetAllVehicles()) do
            if HasVehicleBeenOwnedByPlayer(veh) then
                if not isVehicleOccupied(veh) then
                    DeleteEntity(veh)
                end
            end
        end
        TriggerClientEvent('ox_lib:notify', -1, { title = 'DVALL SYSTEM', type = 'success', description = 'All the vehicles have been removed !',  position = 'top' })
    end
end)



function isVehicleOccupied(veh)
    for seat = -1, 6 do
        if GetPedInVehicleSeat(veh, seat) ~= 0 then
            return true
        end
    end
    return false
end