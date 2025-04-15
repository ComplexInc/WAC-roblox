local playerData = {} -- Stocker les données du joueur

warn("[WAC] Server-side detection is running...")

-- Fonction pour surveiller les déplacements
function CheckPlayerMovement(player)
	if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
		local rootPart = player.Character.HumanoidRootPart
		local humanoid = player.Character:FindFirstChild("Humanoid")

		-- Initialisation des données si nécessaire
		if not playerData[player] then
			playerData[player] = {
				lastPosition = rootPart.Position,
				speedAlerts = 0,
				maxSpeedAlerts = 5,
				reverseSpeedAlerts = 0,
				maxReverseAlerts = 3,
				cpsAlerts = 0,
				MaxcpsAlerts = 3,
			}
		end

		local data = playerData[player]
		local currentPosition = rootPart.Position
		local distance = (currentPosition - data.lastPosition).Magnitude
		local maxDistance = 16 -- Limite de tolérance pour les déplacements normaux

		-- Vérifie si la distance parcourue est trop grande
		if distance > maxDistance or humanoid.JumpHeight >= 7.3 then
			data.speedAlerts += 1
			alerts("Movement anomaly detected", player.Name, data.speedAlerts, data.maxSpeedAlerts)
			if data.speedAlerts >= data.maxSpeedAlerts then
				player:Kick("You have been kicked for SpeedHack or teleportation.")
				playerData[player] = nil
				return
			end
		end

		-- Détection de déplacement vers l'arrière
		local movementVector = (currentPosition - data.lastPosition).Unit
		local forward = rootPart.CFrame.LookVector.Unit
		local dot = movementVector:Dot(forward)

		-- dot ≈ -1 → déplacement rapide en arrière
		if dot < -0.75 and distance > 5 then
			data.reverseSpeedAlerts += 1
			alerts("Reverse Speed detected", player.Name, data.reverseSpeedAlerts, data.maxReverseAlerts)
			if data.reverseSpeedAlerts >= data.maxReverseAlerts then
				player:Kick("You have been kicked for Reverse SpeedHack.")
				playerData[player] = nil
				return
			end
		end

		-- Met à jour la position précédente
		data.lastPosition = currentPosition
	end
end

function CheckPlayerInput(player)
	if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
		-- check player cps without tool
	end
end

-- Fonction alerte
function alerts(alert, player, Act, Max)
	warn("[WAC] " .. player .. " has " .. alert .. " (" .. Act .. "/" .. Max .. ")")
end

-- Detection
game.Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		while task.wait(0.7) do
			if not player.Character then break end
			CheckPlayerMovement(player)
		end
	end)
end)

-- Clear Player Warn
game.Players.PlayerRemoving:Connect(function(player)
	playerData[player] = nil
end)
