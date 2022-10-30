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

Window:Toggle({
	Text = "Walk on Water",
	Callback = function(bool)
		if bool == false then do game.Workspace.WaterLevel.CanCollide = false
				game.Workspace.WaterLevel.Size = Vector3.new(10, 1, 10)
			end
		end
		if bool == true then do game.Workspace.WaterLevel.CanCollide = true
				game.Workspace.WaterLevel.Size = Vector3.new(1000, 1, 1000)
			end
		end
	end
})

Window:Toggle({
	Text = "Choose Map",
	Callback = function(bool)
		if bool == false then do game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = false
			end
		end
		if bool == true then do game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = true
			end
		end
	end
})
Window:Toggle({
	Text = "Solid Island",
	Callback = function(bool)
		for i, v in pairs (game.workspace:GetDescendants())do
			if v.Name == 'LowerRocks' then -- change part to the name you want to look for
				v.CanCollide = bool
			end
		end
	end
})
Window:Button({
	Text = "Disable FallDamage",
	Callback = function()
	 Library:Notification({
           Text = "If you die click disable falldamage again",
           Duration = 5
})
game.Players.LocalPlayer.Character.FallDamageScript:Destroy()
end
})


Window2:Button({
	Text = "Island",
	Callback = function(bool)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108, 49, 0)
	end
})
Window2:Button({
	Text = "Tower",
	Callback = function(bool)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-264, 196, 288)
	end
})

Window3:Dropdown({
	Text = "Water Color",
	List = {"Black", "White", "Purple", "Cyan", "Reset"},
	Callback = function(bool)
		if bool == "Black" then do
				game.Workspace.WaterLevel.BrickColor = BrickColor.new("Black")
				game.Workspace.Structure.FloodLevel.BrickColor = BrickColor.new("Black")
				local Children = game.Workspace.TsunamiWave:GetChildren()
				for a = 1, #Children do
					Children[a].BrickColor = BrickColor.new("Black")
				end
			end
		end
		if bool == "White" then do
				game.Workspace.WaterLevel.BrickColor = BrickColor.new("White")
				game.Workspace.Structure.FloodLevel.BrickColor = BrickColor.new("White")
				local Children = game.Workspace.TsunamiWave:GetChildren()
				for a = 1, #Children do
					Children[a].BrickColor = BrickColor.new("White")
				end
			end
		end
		if bool == "Purple" then do
				game.Workspace.WaterLevel.BrickColor = BrickColor.new("Bright violet")
				game.Workspace.Structure.FloodLevel.BrickColor = BrickColor.new("Bright violet")
				local Children = game.Workspace.TsunamiWave:GetChildren()
				for a = 1, #Children do
					Children[a].BrickColor = BrickColor.new("Bright violet")
				end
			end
		end
		if bool == "Cyan" then do
				game.Workspace.WaterLevel.BrickColor = BrickColor.new("Cyan")
				game.Workspace.Structure.FloodLevel.BrickColor = BrickColor.new("Cyan")
				local Children = game.Workspace.TsunamiWave:GetChildren()
				for a = 1, #Children do
					Children[a].BrickColor = BrickColor.new("Cyan")
				end
			end
		end
		if bool == "Reset" then do
				game.Workspace.WaterLevel.BrickColor = BrickColor.new("Bright blue")
				game.Workspace.Structure.FloodLevel.BrickColor = BrickColor.new("Bright blue")
				local Children = game.Workspace.TsunamiWave:GetChildren()
				for a = 1, #Children do
					Children[a].BrickColor = BrickColor.new("Bright blue")
				end
			end
		end
		end
})
Window3:Toggle({
	Text = "Dark Mode",
	Callback = function(bool)
		if bool == false then do
				game:GetService("Lighting").ClockTime = "14"
				game.Workspace.WaterLevel.BrickColor = BrickColor.new("Bright blue")
				game.Workspace.Structure.Cloud.BrickColor = BrickColor.new("Sand blue")
				game.Workspace.Structure.FloodLevel.BrickColor = BrickColor.new("Bright blue")
				local Children = game.Workspace.TsunamiWave:GetChildren()
				for a = 1, #Children do
					Children[a].BrickColor = BrickColor.new("Bright blue")
				end
			end
		end
		if bool == true then do
				game:GetService("Lighting").ClockTime = "4"
				game.Workspace.WaterLevel.BrickColor = BrickColor.new("Black")
				game.Workspace.Structure.Cloud.BrickColor = BrickColor.new("Black")
				game.Workspace.Structure.FloodLevel.BrickColor = BrickColor.new("Black")
				local Children = game.Workspace.TsunamiWave:GetChildren()
				for a = 1, #Children do
					Children[a].BrickColor = BrickColor.new("Black")
				end
			end
		end
		end
})
Window3:Button({
	Text = "Say Current Disaster",
	Callback = function()
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(game.Players.LocalPlayer.Character.SurvivalTag.Value, "All")
end
})
Window3:Button({
	Text = "Remove Ads",
	Callback = function()
game:GetService("Workspace").BillboardAd:Destroy()
game:GetService("Workspace").ForwardPortal:Destroy()
game:GetService("Workspace").ReturnPortal:Destroy()
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

Window5:Button({
	Text = "Remove Sandstorm GUI",
	Callback = function()
		game.Players.LocalPlayer.PlayerGui.SandStormGui:destroy()
	end
})
Window5:Button({
	Text = "Remove Blizzard GUI",
	Callback = function()
		game.Players.LocalPlayer.PlayerGui.BlizzardGui:destroy()
	end
})
Window5:Button({
	Text = "Current Disaster",
	Callback = function()
  Library:Notification({
           Text = game.Players.LocalPlayer.Character.SurvivalTag.Value,
           Duration = 3
})
	end
})

Window6:Label({
	Text = "Made by: TRHP .gg/G3KVvt988s",
	Color = Color3.fromRGB(214, 214, 214)
})

Window6:Keybind({
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
