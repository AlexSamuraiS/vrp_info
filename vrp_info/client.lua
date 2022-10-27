local display = false

RegisterNetEvent("$alex:nuiOpen")
AddEventHandler("$alex:nuiOpen", function(bool, playerID, money, vip, sponsor, moneybank, ore, admin, name, faction, cps)
	SendNUIMessage({
		action = "UpdateStatus",
		display = bool,
		idjucator = playerID,
		moneyjucator = money,
		moneybanca = moneybank,
		vipjucator = vip,
		sponsorjucator = sponsor,
		orejucator = ore,
		adminjucator = admin,
		factionjucator = faction,
		cpsjucator = cps,
		numejoc = name
	})
end)