--Credits to the library maker
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
local Flags = Library.Flags
--Library.DefaultColor = Color3.fromRGB(65, 143, 232)

local Window = Library:Window({
   Text = "Exploits"
})

local Window2 = Library:Window({
   Text = "Teleports"
})

local Window3 = Library:Window({
   Text = "Fun"
})

local Window4 = Library:Window({
   Text = "Character"
})

local Window5 = Library:Window({
   Text = "Settings"
})

Window:Toggle({
   Text = "Spawn Ammo Box",
   Callback = function(bool)
   if bool == true then do
	   local new = game.Workspace.Ammo:clone()
local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
new.Parent = game.Workspace
new.Name = "temp"
new.CFrame = pos
   end
   end
if bool == false then do
game.Workspace.temp:Destroy()
end
end
   end
})
Window:Toggle({
   Text = "R63 ESP",
   Callback = function(bool)
if bool then
local runService = game:GetService("RunService")
event = runService.RenderStepped:Connect(function()
for __,v in pairs(game:GetService("Workspace").SlederSpawn:GetChildren()) do
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
for __,v in pairs(game:GetService("Workspace").SlederSpawn:GetChildren()) do
v:FindFirstChild("Lol"):Destroy()
end
end
end
  })


Window2:Button({
   Text = "Gunspot #1",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-153.058487, 120.933159, 0.595915973, 0.999780416, 1.94925374e-08, -0.0209540837, -1.79873965e-08, 1, 7.20188922e-08, 0.0209540837, -7.16261681e-08, 0.999780416)
end
})
Window2:Button({
   Text = "Gunspot #2",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-150.188812, 127.751923, -158.605972, -0.932343543, -6.33788275e-08, 0.361573696, -6.0923071e-08, 1, 1.81915798e-08, -0.361573696, -5.06737852e-09, -0.932343543)
end
})

Window3:Button({
	Text = "Start Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackingProject/HPHub/main/IYNotByMe.lua"))()
	end
})

Window4:Slider({
   Text = "WalkSpeed",
   Default = 16,
   Minimum = 16,
   Maximum = 200,
   Callback = function(value)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
   end
})
Window4:Slider({
   Text = "JumpPower",
   Default = 50,
   Minimum = 50,
   Maximum = 250,
   Callback = function(value)
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
   end
})
Window4:Slider({
   Text = "Gravity",
   Default = 196,
   Minimum = 0,
   Maximum = 196,
   Callback = function(value)
       game.Workspace.Gravity = value
   end
})
Window4:Slider({
	Text = "HipHeight",
	Default = game.Players.LocalPlayer.Character.Humanoid.HipHeight,
	Minimum = 0,
	Maximum = 50,
	Callback = function(value)
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = value
	end
})

Window5:Button({
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

Window5:Keybind({
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
