Citizen.CreateThread(function()
	while true do
		local model 	= GetEntityModel(PlayerPedId())
		local min, max 	= GetModelDimensions(model)
		
		Citizen.Wait(10000)
		print("^4ANTI SILENT AIM")
		print("^6Scan wird durchgeführt...")
		
		if min.y < -0.29 or max.z > 0.98 then
			ESX.ShowNotification("~r~Modifizierte x64a.rpf detected! Bitte ersetze sie mit der Originaldatei!")
			TriggerServerEvent("taqifshananen")
		else
			print("^2Keine modifizierten Spiel-Dateien gefunden!")
		end
		return
	end
end)