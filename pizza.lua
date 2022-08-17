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
   Text = "Drop Trucks Contents",
   Callback = function()
game.Workspace.Trucks.Truck2.LeverBounds.ClickDetector.Detector:FireServer()
game.Workspace.Trucks.Truck1.LeverBounds.ClickDetector.Detector:FireServer()
   end
})
Window:Toggle({
   Text = "Job Buttons Disabled",
   Callback = function(bool)
   	   if bool == true then do local gru = game.Workspace.JobButtons:clone()
		  gru.Parent = game.Players.LocalPlayer.StarterGear
		  wait(0.1)
          game.Workspace.JobButtons:destroy()
	   end
	   end
	   if bool == false then do local minions = game.Players.LocalPlayer.StarterGear.JobButtons:clone()
	   minions.Parent = workspace
	   wait(0.1)
	   game.Players.LocalPlayer.StarterGear.JobButtons:destroy()
	   end
	   end
   end
})
Window:Toggle({
   Text = "Remove Manager Door",
   Callback = function(bool)
   	   if bool == true then do local gru2 = game.Workspace.PizzaPlaceDoors.ManagerDoor:clone()
		  gru2.Parent = game.Players.LocalPlayer.StarterGear
		  wait(0.1)
          game.Workspace.PizzaPlaceDoors.ManagerDoor:destroy()
	   end
	   end
	   if bool == false then do local minions2 = game.Players.LocalPlayer.StarterGear.ManagerDoor:clone()
	   minions2.Parent = workspace
	   wait(0.1)
	   game.Players.LocalPlayer.StarterGear.ManagerDoor:destroy()
	   end
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
	Default = 3,
	Minimum = 3,
	Maximum = 50,
	Callback = function(value)
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = value
	end
})

Window5:Label({
   Text = "Made by: TRHP .gg/G3KVvt988s",
   Color = Color3.fromRGB(214, 214, 214)
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
