while wait() do
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

local targetPlayer = workspace:FindFirstChild("JEK_98") -- change to your alt's name
if targetPlayer and targetPlayer:IsA("Model") then
    local targetRoot = getRootPart({Character = targetPlayer})
    local myRoot = getRootPart(localPlayer)
    
    if targetRoot and myRoot then
        local backOffset = -targetRoot.CFrame.LookVector * 3
        local newPosition = targetRoot.Position + backOffset

        myRoot.CFrame = CFrame.new(newPosition, targetRoot.Position) -- Look at the target
    else
    end
else
end
wait(0.1)
local args = {
	"joinround"
}
game:GetService("ReplicatedStorage"):WaitForChild("GameEvent"):FireServer(unpack(args))
wait()
end