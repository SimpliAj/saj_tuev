# saj_tuev

## Requirements:
 - ox_lib

## Description:
The TÜV (Vehicle Registration) Script is designed for seamless integration with ESX up to version 1.7.5. This script works perfectly with saj_testkit, allowing you to check the status of any nearby vehicle using the designated item.

## Features:
__Vehicle Management Menu:__ An item (named #####) is included that, when used, opens a menu where you can add, remove, or check the registration status of a nearby vehicle. The menu includes a job whitelist system, customizable via config.lua.
__Database Integration:__ The script adds a new column to the owned_vehicles table, with a value of 0 for unregistered vehicles and 1 for registered vehicles.
