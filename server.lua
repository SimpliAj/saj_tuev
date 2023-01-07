ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Register a network event to receive the item and job data from the client
RegisterNetEvent("playerHasItem")

-- Create a table to store the valid job and item combinations
local jobItemCombinations = {
    ["job_name_1"] = "item_name_1",
    ["job_name_2"] = "item_name_2",
    ["job_name_3"] = "item_name_3"
}

-- Create a function to handle the network event
function playerHasItem(item, job)
    -- Check if the player has the specified item and job
    if HasItem(item) and GetPlayerJob() == job then
        -- Check if the item and job combination is valid
        if jobItemCombinations[job] == item then
            -- Add a blip for the player on the map
            AddBlipForPlayer(player)
        end
    end
end

-- Add an event handler for the network event
AddEventHandler("playerHasItem", playerHasItem)

