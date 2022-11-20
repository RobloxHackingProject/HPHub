--Credits to the library maker
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackingProject/HPHub/main/ultrarevenant", true))()
local Flags = Library.Flags
--Library.DefaultColor = Color3.fromRGB(65, 143, 232)
local Window = Library:Window({
   Text = "Exploits"
})

local Window2 = Library:Window({
   Text = "Vehicles"
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


Window:Button({
   Text = "Player ESP",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroisswag/universal-esp/main/esp.lua"))()
end
})
Window2:Slider({
   Text = "Max Speed",
   Default = 0,
   Minimum = 0,
   Maximum = 500,
   Callback = function(value)
					for i,v in pairs(game.Workspace.SpawnedVehicles:GetChildren()) do
						if game.Players.LocalPlayer.Name == v.Name then
							v.Config.TopSpeed.Value = value
							end
   end
   end
})
Window2:Slider({
   Text = "Brake Speed",
   Default = 1.7,
   Minimum = 1,
   Maximum = 20,
   Callback = function(value)
	for i,v in pairs(game.Workspace.SpawnedVehicles:GetChildren()) do
		if game.Players.LocalPlayer.Name == v.Name then
			v.Config.BrakePower.Value = value
   end
   end
   end
})
Window2:Button({
   Text = "Drive Underwater",
   Default = 700,
   Minimum = 700,
   Maximum = 10000,
   Callback = function()
	for i,v in pairs(game.Workspace.SpawnedVehicles:GetChildren()) do
		if game.Players.LocalPlayer.Name == v.Name then
			v.Config.CarMass.Value = 10000
   end
   end
   end
})
Window2:Slider({
   Text = "Bike Max Speed",
   Default = 40,
   Minimum = 40,
   Maximum = 200,
   Callback = function(value)
	for i,v in pairs(game.Workspace.SpawnedBikes:GetChildren()) do
		if game.Players.LocalPlayer.Name == v.Name then
			v.Config.MaxSpeed.Value = value
   end
   end
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
	Default = 2.889,
	Minimum = 2,
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
