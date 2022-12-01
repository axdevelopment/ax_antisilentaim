RegisterNetEvent("taqifshananen")
AddEventHandler("taqifshananen", function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local steamname = GetPlayerName(source)
	local webhookdetected = "" -- webhook for detected modified x64a.rpf on non-staff player & kick
	local webhookdetectedadmin = "" -- webhook for detected modified x64a.rpf on admin player 
	local webhookdetectedmod = "" -- webhook for detected modified x64a.rpf on mod player 
	local webhookdetectedsup = ""  -- webhook for detected modified x64a.rpf on sup player 
	local botavatarurl = "" -- url discord bot avatar
	

	if xPlayer.group == 'admin' then
		print("Bei dir wurde eine modifizierte x64a.rpf-Datei entdeckt. Diese deutet auf Silent-Aim hin. Ein Log wurde an die Projektleitung gesendet.")
		local adminlog = {
		{
			["color"] = 15548997,
			["title"] = "Modifizierte x64a.rpf-Datei entdeckt",
			["description"] = "Steamname: **\n"..steamname.."\n**Steamlicense: **\n"..xPlayer.license.."\n**Gruppe:**\n"..xPlayer.group.."**",
			["footer"] = {
			["text"] = "ANTI SILENT AIM",
			},
		}
    }
    PerformHttpRequest(webhookdetectedadmin, function(err, text, headers) end, 'POST', json.encode({username = "Anti Silent-Aim Logs",  avatar_url = botavatarurl,embeds = adminlog}), { ['Content-Type'] = 'application/json' })
		return
	end

	if xPlayer.group == 'mod' then
		print("Bei dir wurde eine modifizierte x64a.rpf-Datei entdeckt. Diese deutet auf Silent-Aim hin. Ein Log wurde an die Projektleitung gesendet.")
		local modlog = {
		{
			["color"] = 15548997,
			["title"] = "Modifizierte x64a.rpf-Datei entdeckt",
			["description"] = "Steamname: **\n"..steamname.."\n**Steamlicense: **\n"..xPlayer.license.."\n**Gruppe:**\n"..xPlayer.group.."**",
			["footer"] = {
			["text"] = "ANTI SILENT AIM",
			},
		}
    }
    PerformHttpRequest(webhookdetectedmod, function(err, text, headers) end, 'POST', json.encode({username = "Anti Silent-Aim Logs",  avatar_url = botavatarurl,embeds = modlog}), { ['Content-Type'] = 'application/json' })
		return
	end

	if xPlayer.group == 'sup' then
		print("Bei dir wurde eine modifizierte x64a.rpf-Datei entdeckt. Diese deutet auf Silent-Aim hin. Ein Log wurde an die Projektleitung gesendet.")
		local suplog = {
		{
			["color"] = 15548997,
			["title"] = "Modifizierte x64a.rpf-Datei entdeckt",
			["description"] = "Steamname: **\n"..steamname.."\n**Steamlicense: **\n"..xPlayer.license.."\n**Gruppe:**\n"..xPlayer.group.."**",
			["footer"] = {
			["text"] = "ANTI SILENT AIM",
			},
		}
    }
    PerformHttpRequest(webhookdetectedsup, function(err, text, headers) end, 'POST', json.encode({username = "Anti Silent-Aim Logs",  avatar_url = botavatarurl,embeds = suplog}), { ['Content-Type'] = 'application/json' })
		return
	end
	
	local log = {
		{
			["color"] = 15548997,
			["title"] = "Modifizierte x64a.rpf-Datei entdeckt",
			["description"] = "Steamname: **\n"..steamname.."\n**Steamlicense: **\n"..xPlayer.license.."\n**Gruppe:**\n"..xPlayer.group.."**\n**Spieler wurde gekickt!**",
			["footer"] = {
			["text"] = "ANTI SILENT AIM",
			},
		}
    }
    PerformHttpRequest(webhookdetected, function(err, text, headers) end, 'POST', json.encode({username = "Anti Silent-Aim Logs",  avatar_url = botavatarurl,embeds = log}), { ['Content-Type'] = 'application/json' })
	print("Du wirst gekickt")
	DropPlayer(source, "Modifizierte x64a.rpf-Datei entdeckt.")
end)

