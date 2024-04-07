-- Load the BoxESP model from ReplicatedStorage
local BoxESPModel = script.BoxESP -- Assuming BoxESP is stored in ReplicatedStorage

-- Function to copy the BoxESP model to a player's HumanoidRootPart
local function copyBoxESPToPlayer(player)
	-- Check if the player and their character exist
	if player and player.Character then
		local character = player.Character

		-- Find the HumanoidRootPart in the character
		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		if humanoidRootPart then
			-- Clone the BoxESP model
			local boxESP = BoxESPModel:Clone()

			-- Find the part to weld (assuming BoxESP model has a Part named "PartToWeld")
			local partToWeld = boxESP:FindFirstChild("PartToWeld")
			if partToWeld then
				-- Create a WeldConstraint between the partToWeld and HumanoidRootPart
				local weld = Instance.new("WeldConstraint")
				weld.Parent = partToWeld
				weld.Part0 = partToWeld
				weld.Part1 = humanoidRootPart
			end

			-- Parent the BoxESP to the character's HumanoidRootPart
			boxESP.Parent = humanoidRootPart
		end
	end
end

-- Function to copy BoxESP to all players in the game
local function copyBoxESPToAllPlayers()
	for _, player in ipairs(game.Players:GetPlayers()) do
		copyBoxESPToPlayer(player)
	end
end

-- Copy BoxESP to all existing players
copyBoxESPToAllPlayers()

-- Connect a function to copy BoxESP to new players when they are added
game.Players.PlayerAdded:Connect(function(player)
	copyBoxESPToPlayer(player)
end)
