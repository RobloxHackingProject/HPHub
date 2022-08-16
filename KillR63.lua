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



Window2:Button({
   Text = "Spawn",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(17, 3, 1)
end
})


Window3:Dropdown({
   Text = "Floor Color",
   List = {"White", "Blue", "Green", "Red", "Purple", "Reset"},
   Callback = function(bool)
   	   if bool == "White" then do game.Workspace.Map.Baseplate.BrickColor = BrickColor.new("White")
	   end
	   end
	   	   if bool == "Blue" then do game.Workspace.Map.Baseplate.BrickColor = BrickColor.new("Dark blue")
	   end
	   end
	   	   if bool == "Green" then do game.Workspace.Map.Baseplate.BrickColor = BrickColor.new("Dark green")
	   end
	   end
	   	   if bool == "Red" then do game.Workspace.Map.Baseplate.BrickColor = BrickColor.new("Bright red")
	   end
	   end
	   	   if bool == "Purple" then do game.Workspace.Map.Baseplate.BrickColor = BrickColor.new("Bright violet")
	   end
	   end
	   if bool == "Reset" then do game.Workspace.Map.Baseplate.BrickColor = BrickColor.new("Really black")
	   end
	   end
   end
})
Window3:Toggle({
   Text = "Dark Mode",
   Callback = function(bool)
if bool == true then do
	game.Workspace.Map.Baseplate.BrickColor = BrickColor.new("Really black")
game:GetService("Lighting").ClockTime = "20"
end
end
if bool == false then do 
	game.Workspace.Map.Baseplate.BrickColor = BrickColor.new("Really black")
game:GetService("Lighting").ClockTime = "10"
end
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
