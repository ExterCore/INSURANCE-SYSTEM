local deleteTimer = 180 --time in Minutes

CreateThread(function()
    while true do
         Wait(deleteTimer * 60000)
        TriggerClientEvent('ox_lib:notify', -1, { title = 'DVALL SYSTEM', type = 'inform', description = 'Inactive vehicles will be deleted in 1MIN',  position = 'top' })
        Wait(45000)
        TriggerClientEvent('ox_lib:notify', -1, { title = 'DVALL SYSTEM', type = 'inform', description = 'Inactive vehicles will be deleted in 15 SECS',  position = 'top' })
        Wait(10000)
        TriggerClientEvent('ox_lib:notify', -1, { title = 'DVALL SYSTEM', type = 'inform', description = 'Inactive vehicles will be deleted in 5 SECS',  position = 'top' })
        Wait(5000)

        for i, veh in pairs(GetAllVehicles()) do
            if HasVehicleBeenOwnedByPlayer(veh) then
                if not isVehicleOccupied(veh) then
                    DeleteEntity(veh)
                end
            end
        end
        TriggerClientEvent('ox_lib:notify', -1, { title = 'DVALL SYSTEM', type = 'success', description = 'All Inactive vehicles got deleted !',  position = 'top' })
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
