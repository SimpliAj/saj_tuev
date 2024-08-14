fx_version 'bodacious'
game 'gta5'

author 'SimpliAj'
description 'TÜV System für ESX'
version '1.0.0'

-- Benötigte Abhängigkeiten
dependencies {
    'es_extended',
    'ox_lib',  
    'mysql-async',  
}

-- Client-Scripts
client_scripts {
    
    'config.lua',
    'client.lua'
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',  -- MySQL Async für Datenbankzugriff
    'config.lua',
    'server.lua'
}

shared_scripts {
    'config.lua'
}
