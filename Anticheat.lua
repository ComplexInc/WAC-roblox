local WACConfig = require(game:GetService("ServerScriptService"):WaitForChild("WACConfig"))


local playerData = {}

warn("[WAC] Server-side detection is running...")

function CheckPlayerMovement(player)
	if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
		local rootPart = player.Character.HumanoidRootPart
		local humanoid = player.Character:FindFirstChild("Humanoid")

		if not playerData[player] then
			playerData[player] = {
				lastPosition = rootPart.Position,
				speedAlerts = 0,
				reverseSpeedAlerts = 0,
			}
		end

		local data = playerData[player]
		local currentPosition = rootPart.Position
		local distance = (currentPosition - data.lastPosition).Magnitude

		-- SpeedHack
		if distance > WACConfig.MaxSpeedDistance or humanoid.JumpHeight >= WACConfig.JumpHeightThreshold then
			data.speedAlerts += 1
			alerts("Movement anomaly detected", player.Name, data.speedAlerts, WACConfig.MaxSpeedAlerts)
			if data.speedAlerts >= WACConfig.MaxSpeedAlerts then
				player:Kick("You have been kicked for SpeedHack or teleportation.")
				playerData[player] = nil
				return
			end
		end

		-- Reverse SpeedHack
		local movementVector = (currentPosition - data.lastPosition).Unit
		local forward = rootPart.CFrame.LookVector.Unit
		local dot = movementVector:Dot(forward)

		if dot < WACConfig.MinReverseDot and distance > WACConfig.MinReverseDistance then
			data.reverseSpeedAlerts += 1
			alerts("Reverse Speed detected", player.Name, data.reverseSpeedAlerts, WACConfig.MaxReverseAlerts)
			if data.reverseSpeedAlerts >= WACConfig.MaxReverseAlerts then
				player:Kick("You have been kicked for Reverse SpeedHack.")
				playerData[player] = nil
				return
			end
		end

		data.lastPosition = currentPosition
	end
end

function alerts(alert, player, current, max)
	warn("[WAC] " .. player .. " has " .. alert .. " (" .. current .. "/" .. max .. ")")
end

game.Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function()
		while task.wait(WACConfig.CheckInterval) do
			if not player.Character then break end
			CheckPlayerMovement(player)
		end
	end)
end)

game.Players.PlayerRemoving:Connect(function(player)
	playerData[player] = nil
end)
