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
   Text = "Infinite Money",
   Callback = function()
   local bool = false
local num = 99999999999999999
local remote = "Cash"

for _,v in pairs(game.Players:GetChildren()) do
game:GetService("ReplicatedStorage").MoneyRequest:FireServer(bool, num, remote, v)
end
end
})

Window2:Dropdown({
   Text = "Hotel",
    List = {"Hotel Entrance", "Basement", "Floor 1", "Floor 2", "Floor 3", "Floor 4", "Floor 5", "Outside Pool", "Inside Pool", "Secret Basement"},
   Callback = function(bool)
   if bool == "Hotel Entrance" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(105, 100, -14)
end
end
   if bool == "Basement" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(123, 88, 61)
end
end
   if bool == "Floor 1" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(103, 112, 61)
end
end
   if bool == "Floor 2" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(103, 124, 61)
end
end
   if bool == "Floor 3" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(103, 149, 61)
end
end
   if bool == "Floor 4" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(103, 166, 61)
end
end
   if bool == "Floor 5" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(125, 187, 43)
end
end
   if bool == "Outside Pool" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(64, 166, 40)
end
end
   if bool == "Inside Pool" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(129, 166, 54)
end
end
   if bool == "Secret Basement" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(112, 5, -57)
end
end
end
})
Window2:Button({
   Text = "Clothing Island",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(342, 12, -194)
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
