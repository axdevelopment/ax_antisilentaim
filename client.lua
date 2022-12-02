CreateThread(function()
	while true do
        Wait(10000)		
        local model = GetEntityModel(PlayerPedId())
		local min, max 	= GetModelDimensions(model)
		if min.y < -0.29 or max.z > 0.98 then
			TriggerServerEvent("antiaim:log")
		end
	end
end)