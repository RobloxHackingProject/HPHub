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
	Text = "miscellaneous"
})

local Window6 = Library:Window({
   Text = "Settings"
})
Library:Notification({
           Text = "Press ESC to access the gui",
           Duration = 10
})
Window:Button({
   Text = "Killer ESP",
   Callback = function(bool)
     for __,v in pairs(game:GetService("Workspace").bots:GetDescendants()) do
      if v:IsA("Model") then
        local a = Instance.new("BillboardGui",v)
        a.Name = "Lol"
        a.Size = UDim2.new(7,0,7,0)
        a.AlwaysOnTop = true
        a.MaxDistance = 250
        local b = Instance.new("Frame",a)
        b.Size = UDim2.new(1,0, 1,0)
        b.BackgroundTransparency = 1
        b.BorderSizePixel = 0
        b.BackgroundColor3 = Color3.new(0, 0, 0)
        local c = Instance.new('TextLabel',b)
        c.Size = UDim2.new(2,0,2,0)
        c.BorderSizePixel = 0
        c.TextSize = 15
        c.Text = v.Name
        c.BackgroundTransparency = 1
      end
  end
  Library:Notification({
           Text = "If esp names disappear click on the esp again",
           Duration = 10
})
end
})





Window2:Dropdown({
   Text = "Safezones",
   List = {"Zone 1", "Zone 2", "Zone 3", "Zone 4", "Zone 5"},
   Callback = function(bool)
   if bool == "Zone 1" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-71, 38, 365)
   end
   end
      if bool == "Zone 2" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-289, 38, 59)
   end
   end
         if bool == "Zone 3" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-96, 23, -15)
   end
   end
         if bool == "Zone 4" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-37, 51, 334)
   end
   end
         if bool == "Zone 5" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85, 105, 328)
   end
   end
end
})
Window2:Dropdown({
   Text = "Zones",
   List = {"Storage", "Main Store", "Floor 1", "Floor 2", "Main Garage 1", "Main Garage 2", "Garage floor 1", "Garage floor 2"},
   Callback = function(bool)
   if bool == "Storage" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-378, 36, 221)
   end
   end
      if bool == "Main Store" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-180, 36, 249)
   end
   end
         if bool == "Floor 1" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-64, 36, 277)
   end
   end
         if bool == "Floor 2" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-147, 50, 340)
   end
   end
         if bool == "Main Garage 1" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-26, 20, 99)
   end
   end
         if bool == "Main Garage 2" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(176 , 36, 280)
   end
   end
            if bool == "Garage floor 1" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168, 58, 267)
   end
   end
            if bool == "Garage floor 2" then do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(169, 80, 273)
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
	Default = 2.8,
	Minimum = 2.8,
	Maximum = 50,
	Callback = function(value)
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = value
	end
})

Window5:Button({
   Text = "Out of Bounds",
   Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108, 49, 0)
   end
})


Window6:Label({
   Text = "Made by: TRHP .gg/G3KVvt988s",
   Color = Color3.fromRGB(214, 214, 214)
})

Window6:Keybind({
   Text = "Toggle Gui",
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
