-- MAKE SURE TO CHANGE ALT VARIABLE TO YOUR ALT'S USERNAME!!!
-- RUN THIS ON YOUR MAIN AND HAVE AN ALT IN THE SERVER WITH YOU
-- YOU WILL FARM KILLS BY KILLING YOUR ALT
-- IF YOU DIE ITS OK, IT WILL FIX ITSELF
-- TURN ON AUTOCLICKER IN INGAME SETTINGS
-- MADE BY BRXRND (BUG-FIXED VERSION)

local tehhaxxx = Instance.new("ScreenGui")
local mainframe = Instance.new("Frame")
local corn = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local start = Instance.new("TextButton")
local stop = Instance.new("TextButton")
local iy = Instance.new("TextButton")
local alt = "JEK_98" -- change to alt's username

-- UI Setup
tehhaxxx.Name = "teh haxxx!!!"
tehhaxxx.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
tehhaxxx.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
tehhaxxx.ResetOnSpawn = false

mainframe.Name = "mainframe"
mainframe.Parent = tehhaxxx
mainframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainframe.BackgroundTransparency = 0.500
mainframe.Position = UDim2.new(0.0049, 0, 0.6696, 0)
mainframe.Size = UDim2.new(0, 234, 0, 256)

corn.Parent = mainframe

title.Name = "title"
title.Parent = mainframe
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.034, 0, 0, 0)
title.Size = UDim2.new(0, 218, 0, 50)
title.Font = Enum.Font.Unknown
title.Text = "sword clash by brxrnd"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextWrapped = true

start.Name = "start"
start.Parent = mainframe
start.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
start.BackgroundTransparency = 0.9
start.BorderSizePixel = 3
start.Position = UDim2.new(0.0726, 0, 0.1953, 0)
start.Size = UDim2.new(0, 200, 0, 50)
start.Font = Enum.Font.SourceSans
start.Text = "start!1!!"
start.TextColor3 = Color3.fromRGB(255, 255, 255)
start.TextScaled = true
start.TextWrapped = true

stop.Name = "stop"
stop.Parent = mainframe
stop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
stop.BackgroundTransparency = 0.9
stop.BorderSizePixel = 3
stop.Position = UDim2.new(0.0726, 0, 0.4726, 0)
stop.Size = UDim2.new(0, 200, 0, 50)
stop.Font = Enum.Font.SourceSans
stop.Text = "stop :("
stop.TextColor3 = Color3.fromRGB(255, 255, 255)
stop.TextScaled = true
stop.TextWrapped = true

iy.Name = "iy"
iy.Parent = mainframe
iy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
iy.BackgroundTransparency = 0.9
iy.BorderSizePixel = 3
iy.Position = UDim2.new(0.0726, 0, 0.7578, 0)
iy.Size = UDim2.new(0, 200, 0, 50)
iy.Font = Enum.Font.SourceSans
iy.Text = "infinite yield :D"
iy.TextColor3 = Color3.fromRGB(255, 255, 255)
iy.TextScaled = true
iy.TextWrapped = true

-- Logic Setup
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

-- Get HumanoidRootPart from player
local function getRootPart(player)
	if player and player.Character then
		return player.Character:FindFirstChild("HumanoidRootPart")
	end
end

-- Update character if respawned
local function getMyRoot()
	return getRootPart(localPlayer)
end

-- Loop control
local running = false

-- START BUTTON
start.MouseButton1Click:Connect(function()
	if running then return end
	running = true

	task.spawn(function()
		while running do
			local targetPlayer = Players:FindFirstChild(alt)
			local myRoot = getMyRoot()

			if targetPlayer and myRoot then
				local targetRoot = getRootPart(targetPlayer)

				if targetRoot then
					local backOffset = -targetRoot.CFrame.LookVector * 3
					local newPosition = targetRoot.Position + backOffset
					myRoot.CFrame = CFrame.new(newPosition, targetRoot.Position)
				end
			end

			task.wait(0.1)
		end
	end)
end)

-- STOP BUTTON
stop.MouseButton1Click:Connect(function()
	running = false
end)

-- INFINITE YIELD BUTTON
iy.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
