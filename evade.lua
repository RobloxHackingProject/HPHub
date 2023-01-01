--Credits to the library maker
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackingProject/HPHub/main/ultrarevenant", true))()
local Flags = Library.Flags

local Window = Library:Window({
   Text = "Exploits"
})

local Window3 = Library:Window({
   Text = "Fun"
})

local Window5 = Library:Window({
   Text = "Settings"
})

Window:Button({
   Text = "Remove Invisible Walls",
   Callback = function()
game:GetService("Workspace").Game.Map.InvisParts:Destroy()
end
})
Window:Button({
   Text = "Nextbots ESP",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackingProject/HPHub/main/ExtraLoadStrings/evade%20esp%20not%20by%20me.lua"))()
end
})


Window3:Button({
	Text = "Start Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackingProject/HPHub/main/IYNotByMe.lua"))()
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
Library:Notification({
           Text = "Press ESC to use the UI easier",
           Duration = 5
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
while true do wait()
if game:GetService("CoreGui").Revenant.Enabled == false then do
local userInputService = game:GetService("UserInputService")
userInputService.MouseIconEnabled = false
end
end
if game:GetService("CoreGui").Revenant.Enabled == true then do
local userInputService = game:GetService("UserInputService")
userInputService.MouseIconEnabled = true
end
end
end
