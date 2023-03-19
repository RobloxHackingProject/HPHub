--Credits to the library maker
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
local Flags = Library.Flags
--Library.DefaultColor = Color3.fromRGB(65, 143, 232)
local Window = Library:Window({
   Text = "Exploits"
})

local Window2 = Library:Window({
   Text = "ESP"
})

local Window3 = Library:Window({
   Text = "Teleports"
})

local Window4 = Library:Window({
   Text = "Fun"
})

local Window5 = Library:Window({
   Text = "Character"
})

local Window6 = Library:Window({
   Text = "Settings"
})

Window:Toggle({
   Text = "Fullbright",
   Callback = function(bool)
   if bool == false then do
local v = game:GetService("Lighting")
v.Brightness = 2
v.GlobalShadows = true
end
end
   if bool == true then do
local v = game:GetService("Lighting")
v.Brightness = 2
v.GlobalShadows = false
end
end
   end
})
Window:Toggle({
Text = "Auto-Collect Items",
Callback = function(bool)
if bool then
       Library:Notification({
           Text = "It can take some time for the module to be disabled.",
           Duration = 5
       })
local runService = game:GetService("RunService")
event = runService.RenderStepped:Connect(function()
for __,v in ipairs(game:GetService("Workspace"):GetChildren()) do
if v:FindFirstChild("TouchTrigger") then
local pos = v.TouchTrigger.CFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(374.44, 45, 137.24)
wait(0.2)
end
end
end)
end
if not bool then
event:Disconnect()
end
end
})

Window2:Toggle({
   Text = "Friends",
   Callback = function(bool)
if bool then
local runService = game:GetService("RunService")
event = runService.RenderStepped:Connect(function()
for __,v in pairs(game:GetService("Workspace").Monsters:GetChildren()) do
 if not v:FindFirstChild("Lol") then
 local esp = Instance.new("Highlight", v)
                esp.Name = "Lol"
                esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                esp.FillColor = Color3.new(0, 0, 255)
end
end
end)
end
if not bool then
event:Disconnect()
for __,v in pairs(game:GetService("Workspace").Monsters:GetChildren()) do
v:FindFirstChild("Lol"):Destroy()
end
end
end
})
Window2:Toggle({
   Text = "Items",
   Callback = function(bool)
if bool then
local runService = game:GetService("RunService")
event = runService.RenderStepped:Connect(function()
for __,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v:FindFirstChild("TouchTrigger") then
 if not v:FindFirstChild("Lol") then
 local esp = Instance.new("Highlight", v)
                esp.Name = "Lol"
                esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                esp.FillColor = Color3.new(0, 255, 0)
end
end
end
end)
end
if not bool then
event:Disconnect()
for __,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v:FindFirstChild("TouchTrigger") then
v:FindFirstChild("Lol"):Destroy()
end
end
end
end
})
Window2:Button({
   Text = "Player ESP",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroisswag/universal-esp/main/esp.lua"))()
end
})

Window3:Button({
   Text = "Theater",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(362, 46, 136, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end
})
Window3:Button({
   Text = "Spawn",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(175, 33, 272)
end
})
Window3:Button({
   Text = "Waiting Room",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(22.5251369, 7.99802494, 331.021362, -0.999754488, 2.02947303e-09, -0.0221568532, 2.45204634e-09, 1, -1.9044732e-08, 0.0221568532, -1.90943865e-08, -0.999754488)
end
})

Window4:Button({
	Text = "Start Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackingProject/HPHub/main/IYNotByMe.lua"))()
	end
})

Window5:Slider({
   Text = "WalkSpeed",
   Default = 16,
   Minimum = 16,
   Maximum = 200,
   Callback = function(value)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
   end
})
Window5:Slider({
	Text = "HipHeight",
	Default = game.Players.LocalPlayer.Character.Humanoid.HipHeight,
	Minimum = 0,
	Maximum = 50,
	Callback = function(value)
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = value
	end
})

Window6:Button({
   Text = "Made by: TRHP .gg/G3KVvt988s",
   Color = Color3.fromRGB(214, 214, 214),
   Callback = function()
   setclipboard("discord.gg/G3KVvt988s")
   	Library:Notification({
           Text = "Copied to clipboad",
           Duration = 3
})
   end
})

Window6:Keybind({
   Text = "Toggle Library",
   Default = Enum.KeyCode.LeftAlt,
   Callback = function()
       Library:Toggle()
   end
})

wait(2)
Toggle:Set({
   Bool = true
})

while true do
   if Flags.TestFlag then
       warn("Toggled")
   end
   wait(1)
end
