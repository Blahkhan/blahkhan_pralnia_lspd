ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("blahkhan_pralnia_lspd:washMoney")
AddEventHandler("blahkhan_pralnia_lspd:washMoney", function(Player)
    local sourceXPlayer = ESX.GetPlayerFromId(source)
    local moneyB = sourceXPlayer.getAccount('black_money')
    if moneyB.money == 0 then
        TriggerClientEvent('showNotify', source,'~r~Nie masz brudnej kasy!', source)
    else
        local moneyAdd = moneyB.money - (moneyB.money / 2)
        TriggerClientEvent('blahkhan_pralnia_lspd:kroliczki', source, moneyAdd)
        sourceXPlayer.setAccountMoney('black_money', 0)
    end
end)
