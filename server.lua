ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


ESX.RegisterUsableItem(Config.TuevItemName, function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    -- Überprüfe, ob der Spieler den Mechaniker-Job hat
    if xPlayer.job.name == Config.TuevJobName then
        TriggerClientEvent('gj:testitem2', source)
    else
        -- Benachrichtigung basierend auf dem gewählten System
        notifyPlayer(source, _U('no_permission'), 'error')
    end
end)

-- Helper function to send notifications based on config
function notifyPlayer(playerId, message, type)
    if Config.Notify.System == 'okokNotify' then
        TriggerClientEvent('okokNotify:Alert', playerId, 'Information', message, 5000, type)
    elseif Config.Notify.System == 'custom' then
        TriggerClientEvent(Config.Notify.CustomNotifyClientEvent, playerId, message, type)
    elseif Config.Notify.System == 'none' then
        -- Keine Benachrichtigung
    end
end
