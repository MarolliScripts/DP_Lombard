ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent('DPlombard:zakupbron')
AddEventHandler('DPlombard:zakupbron', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item = xPlayer.getInventoryItem(Config.Items.forsa)

    if item.count >= Config.Kasa.pistolet then
        xPlayer.removeInventoryItem(Config.Items.forsa, Config.Kasa.pistolet)
        
        xPlayer.addInventoryItem(Config.Items.pistolet, 1)
        TriggerClientEvent('esx:showNotification', _source, 'Gratulacje! Zakupiłeś zwykły Pistolet!')
    else
        TriggerClientEvent('esx:showNotification', source, 'Masz za mało forsy!')
    end
end)

RegisterServerEvent('DPlombard:zakupphone')
AddEventHandler('DPlombard:zakupphone', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item = xPlayer.getInventoryItem(Config.Items.forsa)

    if item.count >= Config.Kasa.telefon then
        xPlayer.removeInventoryItem(Config.Items.forsa, Config.Kasa.telefon)
        
        xPlayer.addInventoryItem(Config.Items.telefon, 1)
        TriggerClientEvent('esx:showNotification', _source, 'Gratulacje! Zakupiłeś telefon!')
    else
        TriggerClientEvent('esx:showNotification', source, 'Masz za mało forsy!')
    end
end)

RegisterServerEvent('DPlombard:zakupwytrych')
AddEventHandler('DPlombard:zakupwytrych', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item = xPlayer.getInventoryItem(Config.Items.forsa)

    if item.count >= Config.Kasa.wytrych then
        xPlayer.removeInventoryItem(Config.Items.forsa, Config.Kasa.wytrych)
        
        xPlayer.addInventoryItem(Config.Items.wytrych, 1)
        TriggerClientEvent('esx:showNotification', _source, 'Gratulacje! Zakupiłeś wytrych!')
    else
        TriggerClientEvent('esx:showNotification', source, 'Masz za mało forsy!')
    end
end)

RegisterServerEvent('DPlombard:sprzedajzloto')
AddEventHandler('DPlombard:sprzedajzloto', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item = xPlayer.getInventoryItem(Config.Items.zloto)

    if item.count >= 1 then
        xPlayer.removeInventoryItem(Config.Items.zloto, 1)
        
        xPlayer.addInventoryItem(Config.Items.forsa, Config.Kasa.zloto)
        TriggerClientEvent('esx:showNotification', _source, 'Gratulacje! Sprzedałeś wytrych!')
    else
        TriggerClientEvent('esx:showNotification', source, 'Masz za mało złota!')
    end
end)

RegisterServerEvent('DPlombard:sprzedajchain')
AddEventHandler('DPlombard:sprzedajchain', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item = xPlayer.getInventoryItem(Config.Items.naszyjnik)

    if item.count >= 1 then
        xPlayer.removeInventoryItem(Config.Items.naszyjnik, 1)
        
        xPlayer.addInventoryItem(Config.Items.forsa, Config.Kasa.chain)
        TriggerClientEvent('esx:showNotification', _source, 'Gratulacje! Sprzedałeś naszyjnik!')
    else
        TriggerClientEvent('esx:showNotification', source, 'Nie masz naszyjnika!')
    end
end)

RegisterServerEvent('DPlombard:sprzedajdiament')
AddEventHandler('DPlombard:sprzedajdiament', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item = xPlayer.getInventoryItem(Config.Items.diament)

    if item.count >= 1 then
        xPlayer.removeInventoryItem(Config.Items.diament, 1)
        
        xPlayer.addInventoryItem(Config.Items.forsa, Config.Kasa.diament)
        TriggerClientEvent('esx:showNotification', _source, 'Gratulacje! Sprzedałeś diament!')
    else
        TriggerClientEvent('esx:showNotification', source, 'Nie masz diamentu!')
    end
end)