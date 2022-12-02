Citizen.CreateThread(function()
	while true do
		local model 	= GetEntityModel(PlayerPedId())
		local min, max 	= GetModelDimensions(model)
		
		Citizen.Wait(10000)
		print("^4ANTI SILENT AIM")
		print("^6Scanning...")
		
		if min.y < -0.29 or max.z > 0.98 then
			ESX.ShowNotification("~r~Silent aim/modified x64a.rpf-file detected. You will get kicked from the server.")
			TriggerServerEvent("taqifshananen")
		else
			print("^2No modified x64a.rpf-files detected!")
		end
		return
	end
end)