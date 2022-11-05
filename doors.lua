--Credits to the library maker
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackingProject/HPHub/main/ultrarevenant", true))()
local Flags = Library.Flags
--Library.DefaultColor = Color3.fromRGB(65, 143, 232)

local Window = Library:Window({
   Text = "Exploits"
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
   Text = "Sort of God Mode",
   Callback = function()
game:GetService("Players").LocalPlayer.Character.Health:Destroy()
game:GetService("Players").LocalPlayer.Character.Sheesh:Destroy()
   end
})
Window:Button({
	Text = "Fullbright",
	Callback = function()
	game:GetService("Lighting").Brightness = 1
	game:GetService("Lighting").ClockTime = 12
	game:GetService("Lighting").FogEnd = 300
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(0.47, 0.47, 0.47)
end
})


Window:Button({
   Text = "Player ESP",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroisswag/universal-esp/main/esp.lua"))()
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
	Text = "HipHeight",
	Default = 3,
	Minimum = 3,
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
