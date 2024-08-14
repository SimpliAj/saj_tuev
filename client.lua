ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Helper function to send notifications based on config
function notifyPlayer(message, type)
    if Config.Notify.System == 'okokNotify' then
        exports['okokNotify']:Alert('Information', message, 5000, type)
    elseif Config.Notify.System == 'custom' then
        TriggerEvent(Config.Notify.CustomNotifyClientEvent, message, type)
    elseif Config.Notify.System == 'none' then
        -- Keine Benachrichtigung
    end
end

-- TÜV SYSTEM
lib.registerContext({
    id = 'pruefitem2',
    title = _U('tuev_menu'),
    options = {
        {
            title = _U('tuev_check'),
            description = _U('tuev_check_desc'),
            icon = 'square-check',
            event = 'gj:tuevtest'
        },
        {
            title = _U('tuev_issue'),
            description = _U('tuev_issue_desc'),
            icon = 'certificate',
            event = 'gj:gtuev'
        },
        {
            title = _U('tuev_remove'),
            description = _U('tuev_remove_desc'),
            icon = 'ban',
            event = 'gj:tuevremov'
        }
    }
})

RegisterNetEvent('gj:tuevtest')
AddEventHandler('gj:tuevtest', function()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local closestVehicle, closestDistance = ESX.Game.GetClosestVehicle(playerCoords)

    if closestVehicle ~= nil and closestDistance < 5.0 then
        local vehiclePlate = GetVehicleNumberPlateText(closestVehicle)
        TriggerEvent('NoName:vintest', source)
        Citizen.Wait(4000)
        TriggerServerEvent('esx_tuev:checkVehicleForTUEV', vehiclePlate)
    else
        notifyPlayer(_U('no_vehicle_nearby'), 'warning')
    end
end)

RegisterNetEvent('gj:tuevremov')
AddEventHandler('gj:tuevremov', function()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local closestVehicle, closestDistance = ESX.Game.GetClosestVehicle(playerCoords)

    if closestVehicle ~= nil and closestDistance < 5.0 then
        local vehiclePlate = GetVehicleNumberPlateText(closestVehicle)
        TriggerEvent('NoName:vintest', source)
        Citizen.Wait(4000)
        TriggerServerEvent('esx_tuev:updateTUEVStatus', vehiclePlate)
    else
        notifyPlayer(_U('no_vehicle_nearby'), 'warning')
    end
end)

RegisterNetEvent('gj:gtuev')
AddEventHandler('gj:gtuev', function()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local closestVehicle, closestDistance = ESX.Game.GetClosestVehicle(playerCoords)

    if closestVehicle ~= nil and closestDistance < 5.0 then
        local vehiclePlate = GetVehicleNumberPlateText(closestVehicle)
        TriggerEvent('NoName:vintest', source)
        Citizen.Wait(4000)
        TriggerServerEvent('esx_tuev:updateTUEVStatus2', vehiclePlate)
    else
        notifyPlayer(_U('no_vehicle_nearby'), 'warning')
    end
end)



RegisterNetEvent('NoName:vintest')
AddEventHandler('NoName:vintest', function(x, y, z)
	exports['progressbar']:Progress({
		name = "vintest",
		duration = 4000,
		label = _U('progressbar'),
		useWhileDead = false,
		canCancel = false,
		controlDisables = {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
		}   ,animation = {
			animDict = "random@train_tracks",
			anim = "idle_e",
			flags = 49,
		},
		prop = {},
		propTwo = {}
	 }, function(cancelled)
		if not cancelled then
			-- finished
		else
			-- cancelled
		end
	 end)
    
end)