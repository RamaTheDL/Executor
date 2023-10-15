-- // Check Version // --
loadstring(game:HttpGet("https://raw.githubusercontent.com/RamaTheDL/Delta/main/Plugin/Version"))()

-- // Function // --
local brek2 = 13864667823

getfenv().keytoclick = "RightShift"

local function toolket()
		delta.Settings:AddButton("Anti Kick", "Makes games not be able to kick you. Works in some games.", function()
local Kick
Kick = hookmetamethod(game.Players.LocalPlayer, "__namecall", function(Self, ...)
if getnamecallmethod() == "Kick" then
return
end
return Kick(Self, ...)
end)
end)


-- // Apply // --
delta.Settings:AddDropdown("Customize", "Just custom features", "Menu", {"Toolkit Mode", "Game Mode", "Simple Mode"}, function(selected)
  if selected == "Toolkit Mode" then
    toolket()
  elseif selected == "Game" then
  	if game.PlaceId == brek2 then
   delta.Settings:AddButton("Break In 2", "Break in 2 script.", function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/RamaTheDL/RobloxScript/main/%5BBreak%20In%202%5DNameless'))()
end)

delta.Settings:AddSwitch("Toggle", "Break In 2 - Toggle", false, function(state)
  if state then
  local vim = game:service("VirtualInputManager")
		vim:SendKeyEvent(true, keytoclick, false, game)
  else
    local vim = game:service("VirtualInputManager")
		vim:SendKeyEvent(true, keytoclick, false, game)
	end)
  end
end)
  elseif selected == "Simple Mode" then
delta.Settings:AddButton("Infinite Jump", "Allows user to infinitely jump.", function()
  local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)

delta.Settings:AddButton("Instant ProximityPrompt", "Bypasses ProximityPrompt cooldown.", function()
game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
  fireproximityprompt(prompt)
end)
end)

delta.Settings:AddInput("Hitbox Expand", "If u type numbers under 2 then Players wont move.", function(text)
_G.HeadSize = text
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.9
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Gray")
v.Character.HumanoidRootPart.Material = "Plastic"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)

local LocalPlayer = game:GetService("Players").LocalPlayer -- Declaring LocalPlayer

delta.Settings:AddInput("WalkSpeed", "Allows user to change character speed.", function(text)
  local number = tonumber(text) -- Converts the text into number first
  
  LocalPlayer.Character.Humanoid.WalkSpeed = number -- Set the walkspeed as the number input
end)

delta.Settings:AddInput("JumpPower", "Allows user to change character jump height.", function(text)
  local number = tonumber(text) -- Converts the text into number first
  
  LocalPlayer.Character.Humanoid.JumpPower = number -- Set the walkspeed as the number input
end)

delta.Settings:AddInput("Gravity", "Allows user to change the gravity.", function(text)
  local number = tonumber(text) -- Converts the text into number first
  
  workspace.Gravity = number -- Set the gravity as the number input
end)
  end
end)
