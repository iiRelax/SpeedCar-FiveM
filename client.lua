--[[

Vehicle Classes:
0: Compacts
1: Sedans
2: SUVs
3: Coupes
4: Muscle
5: Sports Classics
6: Sports
7: Super
8: Motorcycles
9: Off-road
10: Industrial
11: Utility
12: Vans
13: Cycles
14: Boats
15: Helicopters
16: Planes
17: Service
18: Emergency
19: Military
20: Commercial
21: Trains

]] 

Citizen.CreateThread(function() 
	local headId = {}
	while true do
		Citizen.Wait(1000)
		ped = GetPlayerPed(-1)
		if IsPedSittingInAnyVehicle(ped) then
			local veh = GetVehiclePedIsIn(ped, false)
			local vehClass = GetVehicleClass(veh)
			if vehClass == 7 then
				SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), 2.0 * 18.0)
			elseif vehClass == 6 then
				SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), 2.0 * 11.0)
			elseif vehClass == 5 then
				SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), 2.0 * 7.0)
			elseif vehClass == 8 then
				SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), 2.0 * 4.0)
				-- LSPD / EMS
			elseif vehClass == 18 then
				SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), 2.0 * 20.0)
			elseif vehClass == 16 then
				SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(ped, false), 2.0 * 500.0)
			end
		end
	end
end)