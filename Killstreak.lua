--Credits to the library maker
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
local Flags = Library.Flags
--Library.DefaultColor = Color3.fromRGB(65, 143, 232)

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

Window2:Button({
   Text = "Spawn",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(289, 5831, 388, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end
})
Window2:Button({
   Text = "Arena",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1114, 5069.1, 340.3, 1, 0, 0, 0, 1, 0, 0, 0, 1)
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
