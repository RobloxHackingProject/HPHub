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

Window:Button({
   Text = "Reset Progress",
   Callback = function()
   game:GetService("ReplicatedStorage").RemoteEvents.ResetProgress:FireServer()
end
})

Window2:Button({
   Text = "The Tilt",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-276, 144, 83)
end
})
Window2:Button({
   Text = "Traffic Jam",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(252, 79, 182)
end
})
Window2:Button({
   Text = "Blast Off",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(516, 163, 51)
end
})
Window2:Button({
   Text = "The Drop",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-99, 173, 749)
end
})
Window2:Button({
   Text = "Black & White",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(419, 314, 500)
end
})
Window2:Button({
   Text = "Tower Of Doom",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(684, 248.3, 413)
end
})
Window2:Button({
   Text = "Finish",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(998, 11, 159)
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
	Default = 2,
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
