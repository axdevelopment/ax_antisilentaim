RegisterNetEvent("taqifshananen")
AddEventHandler("taqifshananen", function()
	local license = GetPlayerIdentifier(source)
	local steamname = GetPlayerName(source)
	local webhook = "" -- webhook for detected modified x64a.rpf on non-staff player & kick
	local botavatarurl = "" -- url discord bot avatar
		
	local log = {
		{
			["color"] = 15548997,
			["title"] = "Modified x64a.rpf-file detected",
			["description"] = "Steamname: **\n"..steamname.."\n**Steamlicense: \n**"..license.."**\n```This player was kicked for using silent aim/modified x64a.rpf-files!```",
			["footer"] = {
			["text"] = "ANTI SILENT AIM",
			},
		}
    }
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "Anti Silent-Aim Logs",  avatar_url = botavatarurl,embeds = log}), { ['Content-Type'] = 'application/json' })
	DropPlayer(source, "Modified x64a.rpf-file detected!")
end)

