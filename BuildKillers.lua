--Credits to the library maker
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
local Flags = Library.Flags
--Library.DefaultColor = Color3.fromRGB(65, 143, 232)

local Window = Library:Window({
   Text = "Killers"
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
   Text = "Name ESP",
   Callback = function()
   game.Workspace.Killers.ChildAdded:Connect(function()
     for __,v in pairs(game:GetService("Workspace").Killers:GetChildren()) do
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
  	 end)
	   end
})


Window2:Dropdown({
   Text = "Plots",
   List = {"Plot1", "Plot2", "Plot3", "Plot4", "Plot5", "Plot6"},
   Callback = function(bool)
   if bool == "Plot1" then do game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-93.5, 4.9, 242.5)
   end
   end
      if bool == "Plot2" then do game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-93.5, 4.9, 374.5)
   end
   end   if bool == "Plot3" then do game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-222.5, 4.9, 110.5)
   end
   end
      if bool == "Plot4" then do game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-93.5, 4.9, 110.5)
   end
   end
      if bool == "Plot5" then do game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-222.5, 4.9, 374.5)
   end
   end
      if bool == "Plot6" then do game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-222.5, 4.9, 242.5)
   end
   end
end
})


Window3:Button({
   Text = "Remove Buy Pads",
   Callback = function()
   game.Workspace.DevProducts:Destroy()
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
