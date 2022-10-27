local Tunnel = module('vrp','lib/Tunnel')
local Proxy = module('vrp','lib/Proxy')
vRP = Proxy.getInterface('vRP')
vRPclient = Tunnel.getInterface("vRP","vrp_stats")

RegisterCommand("info",function(source,args)
	local user_id = vRP.getUserId{source}
	local targetId = tonumber(args[1])
	if vRP.isUserTrialHelper{user_id} then
		if targetId ~= nil then
			local player = vRP.getUserSource({targetId})
			if not player then return TriggerClientEvent('chatMessage',source,"^0Acest jucator nu este Online!") end;
			local name = GetPlayerName(player)
			local money = vRP.getMoney({targetId})
			local moneybank = vRP.getBankMoney({targetId})
			local ore = vRP.getUserHoursPlayed({targetId})
			local vip = ((vRP.isUserVip{targetId} and "Da | "..vRP.getUserVipTitle{targetId}) or "Nu detine VIP")
			local sponsor = ((vRP.isUserSponsor{targetId} and "Da") or "Nu")
			local admin = ((vRP.isUserAdmin{targetId} and "Da | "..vRP.getUserAdminTitle{targetId}) or "Nu")
			local cps = vRP.GetPlayerCPS{targetId} or 0
			local faction = ((vRP.isUserInFaction{targetId} and "Da | "..vRP.getUserFaction{targetId}) or "Nu")
			TriggerClientEvent("$alex:nuiOpen", player, true, targetId, money, vip, sponsor, moneybank, ore, admin, name, faction, cps)
		else
			TriggerClientEvent('chatMessage',source,"^1Syntax: /info <id>")
		end
	else
		TriggerClientEvent('chatMessage',source,"^0Nu ai acces la aceasta comanda!")
	end
end)