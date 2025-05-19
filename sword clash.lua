-- MAKE SURE TO CHANGE ALT VARIABLE TO YOUR ALT'S USERNAME!!!
-- RUN THIS ON YOUR MAIN AND HAVE AN ALT IN THE SERVER WITH YOU
-- YOU WILL FARM KILLS BY KILLING YOUR ALT
-- IF YOU DIE ITS OK, IT WILL FIX ITSELF
-- TURN ON AUTOCLICKER IN INGAME SETTINGS
-- MADE BY BRXRND

local tehhaxxx = Instance.new("ScreenGui")
local mainframe = Instance.new("Frame")
local corn = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local start = Instance.new("TextButton")
local stop = Instance.new("TextButton")
local iy = Instance.new("TextButton")
local alt = "JEK_98" -- change to alt's username

tehhaxxx.Name = "teh haxxx!!!"
tehhaxxx.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
tehhaxxx.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
tehhaxxx.ResetOnSpawn = false

mainframe.Name = "mainframe"
mainframe.Parent = tehhaxxx
mainframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainframe.BackgroundTransparency = 0.500
mainframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainframe.BorderSizePixel = 0
mainframe.Position = UDim2.new(0.00487125944, 0, 0.669597983, 0)
mainframe.Size = UDim2.new(0, 234, 0, 256)

corn.Name = "corn"
corn.Parent = mainframe

title.Name = "title"
title.Parent = mainframe
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.0341880359, 0, 0, 0)
title.Size = UDim2.new(0, 218, 0, 50)
title.Font = Enum.Font.Unknown
title.Text = "sword clash by brxrnd"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

start.Name = "start"
start.Parent = mainframe
start.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
start.BackgroundTransparency = 0.900
start.BorderColor3 = Color3.fromRGB(0, 0, 0)
start.BorderSizePixel = 3
start.Position = UDim2.new(0.0726495758, 0, 0.1953125, 0)
start.Size = UDim2.new(0, 200, 0, 50)
start.Font = Enum.Font.SourceSans
start.Text = "start!1!!"
start.TextColor3 = Color3.fromRGB(255, 255, 255)
start.TextScaled = true
start.TextSize = 14.000
start.TextWrapped = true

stop.Name = "stop"
stop.Parent = mainframe
stop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
stop.BackgroundTransparency = 0.900
stop.BorderColor3 = Color3.fromRGB(0, 0, 0)
stop.BorderSizePixel = 3
stop.Position = UDim2.new(0.0726495758, 0, 0.47265625, 0)
stop.Size = UDim2.new(0, 200, 0, 50)
stop.Font = Enum.Font.SourceSans
stop.Text = "stop :("
stop.TextColor3 = Color3.fromRGB(255, 255, 255)
stop.TextScaled = true
stop.TextSize = 14.000
stop.TextWrapped = true

iy.Name = "iy"
iy.Parent = mainframe
iy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
iy.BackgroundTransparency = 0.900
iy.BorderColor3 = Color3.fromRGB(0, 0, 0)
iy.BorderSizePixel = 3
iy.Position = UDim2.new(0.0726495758, 0, 0.7578125, 0)
iy.Size = UDim2.new(0, 200, 0, 50)
iy.Font = Enum.Font.SourceSans
iy.Text = "infinite yield :D"
iy.TextColor3 = Color3.fromRGB(255, 255, 255)
iy.TextScaled = true
iy.TextSize = 14.000
iy.TextWrapped = true

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local localPlayer = Players.LocalPlayer
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()

local function getRootPart(player)
	local char = player.Character
	if char then
		return char:FindFirstChild("HumanoidRootPart")
	end
end

local running = false

start.MouseButton1Click:Connect(function()
	if running then return end
	running = true

	task.spawn(function()
		while running do
			local targetPlayer = workspace:FindFirstChild(alt)
			if targetPlayer and targetPlayer:IsA("Model") then
				local targetRoot = getRootPart({Character = targetPlayer})
				local myRoot = getRootPart(localPlayer)

				if targetRoot and myRoot then
					local backOffset = -targetRoot.CFrame.LookVector * 3
					local newPosition = targetRoot.Position + backOffset
					myRoot.CFrame = CFrame.new(newPosition, targetRoot.Position)
				end
			end
			wait(0.5)
			game:GetService("ReplicatedStorage"):WaitForChild("GameEvent"):FireServer("joinround")
			wait()
		end
	end)
end)


stop.MouseButton1Click:Connect(function()
	running = false
end)

iy.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

while wait() do
	wait(60)
	local args = {
	"none",
	{
		rootCF = CFrame.new(-166.5124969482422, 18.457197189331055, -80.96481323242188, -1, 0, 0, 0, 1, 0, 0, 0, -1),
		force = vector.create(0, 0.000052020757721038535, 0),
		bodyparts = {
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Head"),
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Torso"),
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Left Arm"),
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Right Arm"),
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Left Leg"),
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Right Leg"),
			game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart"),
			game:GetService("Players").LocalPlayer.Character:WaitForChild("MeshPartAccessory"):WaitForChild("Handle"),
			game:GetService("Players").LocalPlayer.Character:WaitForChild("BackSword"),
			game:GetService("Players").LocalPlayer.Character:WaitForChild("CIassicSword"):WaitForChild("Sword"),
			game:GetService("Players").LocalPlayer.Character:WaitForChild("CIassicSword"):WaitForChild("Handle"),
			game:GetService("Players").LocalPlayer.Character:WaitForChild("CIassicSword"):WaitForChild("Effect"),
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Pal Hair"):WaitForChild("Handle"),
			Instance.new("Part", nil),
			game:GetService("Players").LocalPlayer.Character:WaitForChild("VarietyShades10"):WaitForChild("Handle"),
			game:GetService("Players").LocalPlayer.Character:WaitForChild("InternationalFedora"):WaitForChild("Handle")
		},
		inround = game:GetService("Players").LocalPlayer:WaitForChild("inround")
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("LocalDeath"):FireServer(unpack(args))

	wait()
end
