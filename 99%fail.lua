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
   Text = "Disable tile death",
   Callback = function()
 local Children = game.workspace.Map.Game.Tiles.Left:GetChildren()
for i = 1, #Children do
   Children[i].TouchInterest:Destroy()
end
local Children = game.workspace.Map.Game.Tiles.Right:GetChildren()
for a = 1, #Children do
   Children[a].TouchInterest:Destroy()
end
end
})



Window2:Button({
   Text = "Spawn",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(253, 1996, -149)
end
})
Window2:Button({
   Text = "Finish",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-893, 1996, -150)
end
})

Window3:Dropdown({
	Text = "Wall Color",
	List = {"White", "Purple", "Cyan", "Reset"},
	Callback = function(bool)
		if bool == "Grey" then do
				local Children = game.Workspace.Map.Game.Walls:GetChildren()
				for a = 1, #Children do
				Children[a].BrickColor = BrickColor.new("Grey")
				end
				end
		end
				if bool == "White" then do
				local Children = game.Workspace.Map.Game.Walls:GetChildren()
				for a = 1, #Children do
				Children[a].BrickColor = BrickColor.new("White")
				end
				end
		end
				if bool == "Purple" then do
				local Children = game.Workspace.Map.Game.Walls:GetChildren()
				for a = 1, #Children do
				Children[a].BrickColor = BrickColor.new("Bright violet")
				end
				end
		end
				if bool == "Cyan" then do
				local Children = game.Workspace.Map.Game.Walls:GetChildren()
				for a = 1, #Children do
				Children[a].BrickColor = BrickColor.new("Cyan")
				game:GetService("Lighting").ClockTime = "14"
				end
				end
		end
				if bool == "Reset" then do
				local Children = game.Workspace.Map.Game.Walls:GetChildren()
				for a = 1, #Children do
				Children[a].BrickColor = BrickColor.new("Black")
				end
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
