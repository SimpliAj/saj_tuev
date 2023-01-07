ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Register a network event to receive the item and job data from the client
RegisterNetEvent("playerHasItem")

-- Create a function to handle the network event
function playerHasItem(item, job)
    -- Check if the player has the specified item and job
    if HasItem(item) and GetPlayerJob() == job then
        -- Add a blip for the player on the map
        AddBlipForPlayer(player)
    end
end

-- Add an event handler for the network event
AddEventHandler("playerHasItem", playerHasItem)
