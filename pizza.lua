--Credits to the library maker
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
local Flags = Library.Flags

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
   Text = "Drop Trucks Contents",
   Callback = function()
game.Workspace.Trucks.Truck2.LeverBounds.ClickDetector.Detector:FireServer()
game.Workspace.Trucks.Truck1.LeverBounds.ClickDetector.Detector:FireServer()
   end
})
Window:Button({
   Text = "Remove Job Buttons",
   Callback = function()
game.Workspace.JobButtons:destroy()
   end
})
Window:Button({
   Text = "Remove Manager Door",
   Callback = function()
          game.Workspace.PizzaPlaceDoors.ManagerDoor:destroy()
   end
})
Window:Toggle({
   Text = "Spam Team Change",
   Callback = function(bool)
if bool then
local runService = game:GetService("RunService")
event = runService.RenderStepped:Connect(function()
game:GetService("ReplicatedStorage").PlayerChannel:FireServer("ChangeJob", "Cashier")
wait(0.2)
game:GetService("ReplicatedStorage").PlayerChannel:FireServer("ChangeJob", "Cook")
wait(0.2)
game:GetService("ReplicatedStorage").PlayerChannel:FireServer("ChangeJob", "Pizza Boxer")
wait(0.2)
game:GetService("ReplicatedStorage").PlayerChannel:FireServer("ChangeJob", "Delivery")
wait(0.2)
game:GetService("ReplicatedStorage").PlayerChannel:FireServer("ChangeJob", "Supplier")
end)
end
if not bool then
event:Disconnect()
end
end
})


Window2:Dropdown({
   Text = "Locations",
   List = {"Spawn", "Cashier", "Cook", "Pizza Boxer", "Delivery", "Supplier", "Manager"},
   Callback = function(bool)
      if bool == "Spawn" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(47, 4, 185)
   end
   end
         if bool == "Cashier" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49, 5, 82)
   end
   end
         if bool == "Cook" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(36, 5, 62)
   end
   end
         if bool == "Pizza Boxer" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(55, 5, 18)
   end
   end
         if bool == "Delivery" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(59, 5, -21)
   end
   end
         if bool == "Supplier" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8, 14, -1033)
   end
   end
         if bool == "Manager" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(24, 5, 6)
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
Window3:Toggle({
   Text = "Sit",
   Callback = function(bool)
game.Players.LocalPlayer.Character.Humanoid.Sit = bool
   end
})
Window3:Toggle({
	Text = "Mute Alarm",
	Callback = function(bool)
if bool then
local runService = game:GetService("RunService")
event = runService.RenderStepped:Connect(function()
wait(0.5)
game:GetService("Workspace").Alarm.Alarm.Alarm:Destroy()
end)
end
if not bool then
event:Disconnect()
end
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
