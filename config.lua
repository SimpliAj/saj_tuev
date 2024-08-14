Config = {}

--  System Configurations
Config.TuevItemName = 'tuev'  -- Itemname
Config.TuevJobName = 'mechanic'  -- Job who can use

-- Notify settings
Config.Notify = {
    System = 'okokNotify',  -- Options: 'okokNotify', 'custom', 'none'
    CustomNotifyClientEvent = 'Trigger Clientside'
    CustomNotifyServerEvent = 'Trigger Serverside'
}

-- Locales 
Locales['de'] = {
    ['no_permission'] = 'Du kannst das nicht nutzen!',
    ['success'] = 'TüV erfolgreich durchgeführt',
    ['no_vehicle'] = 'Kein Fahrzeug in der Nähe gefunden!',
    ['tuev_menu'] = 'TÜV Menü',
    ['tuev_check'] = 'Überprüfen',
    ['tuev_check_desc'] = 'Überprüfe ob TÜV vorhanden ist',
    ['tuev_issue'] = 'Ausstellen',
    ['tuev_issue_desc'] = 'Stelle TÜV für ein KFZ aus (ADAC)',
    ['tuev_remove'] = 'Entfernen',
    ['tuev_remove_desc'] = 'Entferne den TÜV Status eines KFZ (ADAC)',
    ['progressbar'] = 'Überprüfen...'

}

Locales['en'] = {
    ['no_permission'] = 'You cannot use this!',
    ['success'] = 'TüV successfully performed',
    ['no_vehicle'] = 'No vehicle found nearby!',
    ['tuev_menu'] = 'TÜV Menu',
    ['tuev_check'] = 'Check',
    ['tuev_check_desc'] = 'Check if TÜV is present',
    ['tuev_issue'] = 'Issue',
    ['tuev_issue_desc'] = 'Issue TÜV for a vehicle (ADAC)',
    ['tuev_remove'] = 'Remove',
    ['tuev_remove_desc'] = 'Remove TÜV status from a vehicle (ADAC)',
    ['progressbar'] = 'Checking...'
}
