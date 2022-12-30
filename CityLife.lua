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
   Text = "Player ESP",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroisswag/universal-esp/main/esp.lua"))()
end
})
Window:Dropdown({
   Text = "Change Job",
   List = {"Police", "Criminal", "Cleaner", "Cook", "Firefighter", "Hair salon", "Neutral"},
   Callback = function(bool)
      if bool == "Police" then do
game:GetService("ReplicatedStorage").remoteInterface.jobs.setJob:InvokeServer(5)
   end
   end
      if bool == "Criminal" then do
game:GetService("ReplicatedStorage").remoteInterface.jobs.setJob:InvokeServer(7)
   end
   end
      if bool == "Cleaner" then do
		  game:GetService("ReplicatedStorage").remoteInterface.jobs.setJob:InvokeServer(2)
	  end
   end
      if bool == "Cook" then do
game:GetService("ReplicatedStorage").remoteInterface.jobs.setJob:InvokeServer(3)
   end
   end
   if bool == "Firefighter" then do
game:GetService("ReplicatedStorage").remoteInterface.jobs.setJob:InvokeServer(4)
   end
   end
   if bool == "Hair salon" then do
game:GetService("ReplicatedStorage").remoteInterface.jobs.setJob:InvokeServer(6)
   end
   end
      if bool == "Neutral" then do
game:GetService("ReplicatedStorage").remoteInterface.jobs.setJob:InvokeServer(1)
   end
   end
   end})

Window2:Dropdown({
   Text = "Work Locations",
   List = {"Police", "Criminal", "Cleaner", "Cook", "Firefighter", "Hair salon"},
   Callback = function(bool)
      if bool == "Police" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-109, 8, -914)
   end
   end
      if bool == "Criminal" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(632, 8, -649)
   end
   end
      if bool == "Cleaner" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14, 8, -614)
   end
   end
      if bool == "Cook" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-127, 8, -773)
   end
   end
   if bool == "Firefighter" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-37, 8, -831)
   end
   end
   if bool == "Hair salon" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(156, 8, -908)
   end
   end
   end})


Window3:Button({
	Text = "Spawn car in police station",
	Callback = function()
		game:GetService("ReplicatedStorage").remoteInterface.vehicles.spawnPlayerVehicle:InvokeServer(CFrame.new(-108, 8, -930), 0)
	end
})
Window3:Button({
	Text = "Start Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackingProject/HPHub/main/IYNotByMe.lua"))()
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
