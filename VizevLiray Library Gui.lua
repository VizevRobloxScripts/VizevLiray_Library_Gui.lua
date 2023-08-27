local Library = script
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local UserInputService = game:GetService('UserInputService')
local TweenService = game:GetService('TweenService')
local HttpService = game:GetService('HttpService')
local CoreGui = game:GetService('CoreGui')

	if string.find(Library, 'Library Gui') then
		elseif string.lower(Library.LinkedSource) then
			Library = nil
end

local getlink = getlinkurl()

	function Position(x, y, z)
		UDim2.new(x, y, z)
		x = 2  y = 1 z = 3
		return x + y + z 
	end

	function Library:LoadSettings()
		if pcall(function(Settings) 
			settings(Settings)
		end) then
	end
		return Library
	end

		Icons = {
			Main = 'rbxassetid://14596013815'
		}

	Themes = {
		BlackColors = {
			Color3.fromRGB(159, 161, 172);
			Color3.fromHSV(0, 0, 0.262745);
			Color3.fromHex(0, 0, 0);
		},
		
		{
			Color3.new(0.0784314, 0.239216, 0.239216)
		},
		
		Main = Color3.new(0.478431, 0.486275, 0.517647),
		
		{
			Color3.new(0.576471, 0.576471, 0.576471)
		}
	}
	RandomThemes = math.random(#Themes, 6)

	otherLibrary = {
		Child = {},
		Enabled = false,
		GetLink = getlink
	}

	spawn(function(fps,speed)
		local settings = {
			['FPS'] = fps,
			['Speed'] = speed
						}
	end)

		function Library:ResetSettings(Settings)
			if not Settings then
				warn('Your Settings is not enabled!')
			end
			if Settings == true then
				Settings:Reset()
			end
		return Library
	end

	local LibraryGui = Instance.new("ScreenGui")
	LibraryGui.Parent = Library
	LibraryGui.Name = 'Library Gui'
	LibraryGui.ResetOnSpawn = true

	local LibraryFrm = Instance.new('Frame')
	LibraryFrm.Parent = LibraryGui
	LibraryFrm.Name = "Library Frame"
	LibraryFrm.Size = UDim2.new(1.9, 1.5, 0.8, 0.6)
	LibraryFrm.Position = UDim2.new(0.4, 1.6, 0.5, 0.3)
	LibraryFrm.Draggable = true
	LibraryFrm.BackgroundColor3 = Color3.new(RandomThemes)

	local UICorner = Instance.new("UICorner")
	UICorner.Parent = LibraryFrm
	UICorner.CornerRadius = UDim.new(5,2).Scale

function AddBoxEvent(Text,Transparency,OnActivate)
	local Box = Instance.new("TextBox")
	Box.Parent = LibraryFrm
	Box.Name = "TestBox"
	Box.Size = UDim2.new(0.3, 3.1, 1.2, 0.2)
	OnActivate = function()Box.Changed:Connect(function(active)OnActivate = string.lower(Box.InputChanged:Wait()) if active:lower(OnActivate) then string.lower(active*OnActivate) end end) end
	Box.Text = string.sub(Text*Box.Text, 1, 3):lower(AddBoxEvent(string.sub(Text*Box.Text)))
	Box.PlaceholderText = string.sub(Text*Box.PlaceholderText, 1, 2):lower(AddBoxEvent(string.sub(Box.PlaceholderText)))
	Box.Transparency = string.sub(Transparency-1,AddBoxEvent(Transparency))
	AddBoxEvent(Transparency,string.sub(Text*Box.Text,1,3),string.sub(Box.PlaceholderText,1,2))
	TweenService:Create(Box,TweenInfo.new(0.6,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0.3,true,0.4),LibraryFrm):Play()
end

function AddUICorner(Parent)
	local UICornerTest = Instance.new("UICorner")
	UICornerTest.Parent = AddUICorner(Parent,string.sub(Parent, 1, 7))
	UICornerTest.CornerRadius = UDim.new(5, 2)
	game:GetService('Debris'):AddItem(UICornerTest, 10000)
end

	Library:AddBox('Box Text','Box Place Holder',function()
		AddBoxEvent(0,'Box Text','Box Place Holder')
			table.find(LibraryFrm,'Box Text', 1.7)
	end)
	table.insert(AddBoxEvent(Library:AddBox('Box Text','Box Place Holder')))

function AddTextButton()
	function Library:AddButton(Text,Name,Transparency,Click)
		local TextButtonTest = Instance.new("TextButton")
		TextButtonTest.Parent = LibraryFrm
		TextButtonTest.Name = string.sub(Name, 1, 6)
		TextButtonTest.Size = UDim2.new(0.5, 1.3, 0.8, 0.1)
		TextButtonTest.Position = UDim2.new(0.7, 1.2, 0.6, 0.1)*Position(1, 4.3, 0.2)
		TextButtonTest.Text = string.match(TextButtonTest.Text,string.lower(Text),1.5)
		TextButtonTest.Transparency = string.sub(Transparency-1,1,0)
		Click = function() Click = string.lower(TextButtonTest.MouseButton1Click) TextButtonTest.MouseButton1Click:Connect(Click)table.insert(Click,TextButtonTest.MouseButton1Click) end
		TextButtonTest.MouseButton1Up:Connect(function()
		table.insert(TextButtonTest.MouseButton1Up,TextButtonTest.MouseButton1Click,function(x)
			x = TextButtonTest.MouseButton1Click:Connect(function()
				return script and getmetatable(script)
			end).Connected
			x = nil
		end)
	end).Connected = true
		TweenService:Create(TextButtonTest,TweenInfo.new(1.3,Enum.EasingStyle.Bounce,Enum.EasingDirection.In,0.3,true,0.6),LibraryGui):Play()
	end
		return Library
end

Mouse.Button2Up:Connect(function()
	TweenService:Create(LibraryFrm,TweenInfo.new(0.7,Enum.EasingStyle.Cubic,Enum.EasingDirection,0.5,true,1.5),getmetatable(string))
end)

UserInputService.InputBegan:Connect(function(Input)
	Input.Delta = Vector3.new(0.3, 0.1, 1.4)
	Input.Position = Vector3.new(3.1, 0.3, 0.5*Position(0.1, 3.1, 0.8))
end)
UserInputService:IsKeyDown(Enum.KeyCode.LeftControl)

function Library:AddTitle(Title,Text,Transparency)
	Title = string.rep(Text,0.5)
	local TitleText = Instance.new("TextLabel")
	TitleText.Parent = LibraryFrm
	TitleText.Name = "Title"
	TitleText.Size = UDim2.new(0.5, 1.3, 0.4, 1.4)
	TitleText.Position = UDim2.new(0.4, 0, 0, 1.2)
	TitleText.Transparency = string.sub(Transparency-1, 1, 0)
	TitleText.Text = string.sub(Title[Text], 0.4, 1.3)
	TitleText.BackgroundTransparency = 1
	AddUICorner(TitleText)
	return Library
end

Library:AddTitle({
	Title = "VizevLiray Library Gui";
	Transparency = 0;
})

function Credits(UserId,DisplayName,Visible)
	if UserId == 4957185752 and DisplayName == "Vizev" then
		local CreditsFrame = Instance.new("Frame")
		CreditsFrame.Parent = LibraryGui
		CreditsFrame.Name = "Credits"
		CreditsFrame.Size = UDim2.new(1.9, 2.3, 3.0, 1.3)
		CreditsFrame.Position = UDim2.new(0.1, 2.1, 0.2, 0)
		CreditsFrame.Visible = string.match(Visible * string.sub(1, 5), Visible, 0.6)
		CreditsFrame.Draggable = true
		Player.UserId = UserId
		Player.DisplayName = DisplayName
		
		local CreditsText = Instance.new("TextLabel")
		CreditsText.Parent = CreditsFrame
		CreditsText.Name = "Credits Text"
		CreditsText.Size = UDim2.new(0.3, 1.0, 2.1, 0.4)
		CreditsText.Position = UDim2.new(0.4, 0.9, 0.1, 0)
		CreditsText.Text = "VizevLiray Library Created by: Vizev, Scripting: Vizev, May you can create your script with VizevLiray Library Gui?"
		CreditsText.TextScaled = true
		CreditsText.BackgroundTransparency = 1
		CreditsText.TextSize = 32
		
		AddUICorner(CreditsFrame)
		AddUICorner(CreditsText)
	end
end

Library:AddButton({
	Text = 'Credits';
	Name = "Credits Button";
	Transparency = 0.1;
	Click = function()
		Credits(4957185752,"Vizev",true)
	end
})

Library:AddButton({
	Text = 'FPS';
	Name = "FPS Button";
	Click = function(FPS)
		FPS = 300
	end
})

		LibraryFrm:FindFirstChild("FPS Button").MouseButton1Up:Connect(function(FPS)
			FPS = 3000
		end)

if getlink then
	HttpService:PostAsync(getlink,'http://',Enum.HttpContentType.ApplicationUrlEncoded,false,Library)
end

	function Library:GetGameId(GameId)
		if not game.GameId == GameId then
			warn('You are not playing the game!')
		end
		if game.GameId == GameId then
			return Library
		end
		return Library
	end

	function Library:GetChildren(child,parent)
		for i,v in pairs(Player) do
			child[i] = v
		end
		child.Parent = parent
			game.Players.ChildAdded:Wait()
		if child == nil then
			return otherLibrary.Child
		end
		return Library
	end

	if not LibraryGui.Parent then
		repeat
			LibraryGui.Parent = CoreGui
		until
			wait()
	end

	function Library.Notification(Notification)
		if not Notification then
			warn('Your Notification is 0.')
		end
			local Notification = Instance.new("TextLabel")
			Notification.Parent = LibraryFrm
			Notification.Name = "Notification Message"
			Notification.Size = UDim2.new(3.1, 1.3, 2.1, 0.9)
			Notification.Position = UDim2.new(0.3, 0.1, 0, 0.2)
			Notification.Draggable = true
			Notification.BackgroundColor3 = Color3.new(RandomThemes)
			Notification.TextSize = 32
	
			Notification:Remove()
			wait(6)
	
			AddUICorner(Notification)
		function NotificationText()
			Notification.Text = NotificationText()
		end
		return Library
	end

NotificationText("Welcome to VizevLiray Library Gui!")

	for _,v in pairs(LibraryFrm.Transparency) do
		TweenService:Create(v, {LibraryFrm.Transparency == 0.1}):Play()
		TweenService:Create(v, {LibraryFrm.Transparency == 0.3}):Play()
		TweenService:Create(v, {LibraryFrm.Transparency == 0.7}):Play()
		TweenService:Create(v, {LibraryFrm.Transparency == 1}):Play()
		
		repeat
			TweenService:Create(v, {LibraryFrm.Transparency == 0.9}):Play()
	until
			v
	end

	function Settings(FPS)
		FPS = FPS or 100
	end
Settings(60)

	local VizevLirayFolder = Instance.new("Folder")
	VizevLirayFolder.Parent = script
	VizevLirayFolder.Name = "Library Settings"

	local StringLibrary = Instance.new('StringValue')
	StringLibrary.Name = "String"
	StringLibrary.Value = string.lower(Library)

		function Library:GetScript(Class)
			if Class == "Script" then
				Class:format('Script')
			end
			if Class == "LocalScript" then
				Class:format('LocalScript')
			end
			if Class == "ModuleScript" then
				Class:format('ModuleScript')
			end
		Instance.new(Class)
			if not Class then
				return
			end
			return Library
		end

function SettingsGui()
	local ScreenGui1 = Instance.new("ScreenGui")
	ScreenGui1["Name"] = "Settings"
	ScreenGui1["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
	ScreenGui1["Parent"] = LibraryGui
	
	
	local Frame2 = Instance.new("Frame",ScreenGui1)
	Frame2["Name"] = "Settings Frame"
	Frame2["Position"] = UDim2.new(0.323061645, 0, 0.367718458, 0)
	Frame2["BorderColor3"] = Color3.new(0, 0, 0)
	Frame2["Size"] = UDim2.new(0, 455, 0, 326)
	Frame2["BorderSizePixel"] = 0
	Frame2["BackgroundColor3"] = Color3.new(0.517647, 0.52549, 0.560784)
	
	
	local UICorner3 = Instance.new("UICorner",Frame2)
	UICorner3["CornerRadius"] = UDim.new(0, 12)
	
	
	local TextLabel4 = Instance.new("TextLabel",Frame2)
	TextLabel4["TextColor3"] = Color3.new(0, 0, 0)
	TextLabel4["BorderColor3"] = Color3.new(0, 0, 0)
	TextLabel4["Text"] = "Settings"
	TextLabel4["Font"] = Enum.Font.SourceSans
	TextLabel4["Name"] = "Gui Title"
	TextLabel4["TextSize"] = 32
	TextLabel4["Size"] = UDim2.new(0, 455, 0, 38)
	TextLabel4["BorderSizePixel"] = 0
	TextLabel4["BackgroundColor3"] = Color3.new(0.392157, 0.396078, 0.423529)
	
	
	local UICorner5 = Instance.new("UICorner",TextLabel4)
	
	
	local TextButton6 = Instance.new("TextButton",TextLabel4)
	TextButton6["TextColor3"] = Color3.new(0, 0, 0)
	TextButton6["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton6["Text"] = "X"
	TextButton6["Font"] = Enum.Font.SourceSansBold
	TextButton6["Name"] = "Close Button"
	TextButton6["Position"] = UDim2.new(0.905494511, 0, 0, 0)
	TextButton6["TextSize"] = 32
	TextButton6["Size"] = UDim2.new(0, 43, 0, 38)
	TextButton6["BorderSizePixel"] = 0
	TextButton6["BackgroundColor3"] = Color3.new(1, 0, 0)
	
	
	local UICorner7 = Instance.new("UICorner",TextButton6)
	
	
	local Script8 = Instance.new("Script",TextButton6)
	
	
	local Frame9 = Instance.new("Frame",Frame2)
	Frame9["Name"] = "Buttons"
	Frame9["Position"] = UDim2.new(0.0351648368, 0, 0.15337424, 0)
	Frame9["BorderColor3"] = Color3.new(0, 0, 0)
	Frame9["Size"] = UDim2.new(0, 423, 0, 257)
	Frame9["BorderSizePixel"] = 0
	Frame9["BackgroundColor3"] = Color3.new(0.529412, 0.529412, 0.529412)
	
	
	local UICorner10 = Instance.new("UICorner",Frame9)
	UICorner10["CornerRadius"] = UDim.new(0, 12)
	
	
	local TextButton11 = Instance.new("TextButton",Frame9)
	TextButton11["TextColor3"] = Color3.new(0, 0, 0)
	TextButton11["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton11["Text"] = "Create Folder"
	TextButton11["Font"] = Enum.Font.SourceSans
	TextButton11["Name"] = "Create Folder"
	TextButton11["Position"] = UDim2.new(0.0520094559, 0, 0.108949415, 0)
	TextButton11["TextSize"] = 14
	TextButton11["Size"] = UDim2.new(0, 96, 0, 50)
	TextButton11["BorderSizePixel"] = 0
	TextButton11["BackgroundColor3"] = Color3.new(0.313726, 0.317647, 0.337255)
	
	
	local UICorner12 = Instance.new("UICorner",TextButton11)
	
	
	local TextBox13 = Instance.new("TextBox",TextButton11)
	TextBox13["CursorPosition"] = -1
	TextBox13["TextColor3"] = Color3.new(0, 0, 0)
	TextBox13["BorderColor3"] = Color3.new(0, 0, 0)
	TextBox13["Text"] = ""
	TextBox13["Size"] = UDim2.new(0, 200, 0, 20)
	TextBox13["Font"] = Enum.Font.SourceSans
	TextBox13["Name"] = "FolderName"
	TextBox13["Position"] = UDim2.new(1.20833337, 0, 0.119999997, 0)
	TextBox13["TextSize"] = 14
	TextBox13["PlaceholderText"] = "The folder name here"
	TextBox13["BorderSizePixel"] = 0
	TextBox13["BackgroundColor3"] = Color3.new(1, 1, 1)
	
	
	local UICorner14 = Instance.new("UICorner",TextBox13)
	
	
	local Script15 = Instance.new("Script",TextBox13)
	
	
	local TextBox16 = Instance.new("TextBox",TextButton11)
	TextBox16["CursorPosition"] = -1
	TextBox16["TextColor3"] = Color3.new(0, 0, 0)
	TextBox16["BorderColor3"] = Color3.new(0, 0, 0)
	TextBox16["Text"] = ""
	TextBox16["Size"] = UDim2.new(0, 200, 0, 17)
	TextBox16["Font"] = Enum.Font.SourceSans
	TextBox16["Name"] = "ObjectName"
	TextBox16["Position"] = UDim2.new(1.20833337, 0, 0.660000026, 0)
	TextBox16["TextSize"] = 14
	TextBox16["PlaceholderText"] = "Here the object name!"
	TextBox16["BorderSizePixel"] = 0
	TextBox16["BackgroundColor3"] = Color3.new(1, 1, 1)
	
	
	local UICorner17 = Instance.new("UICorner",TextBox16)
	
	
	local Script18 = Instance.new("Script",TextBox16)
	local Script19 = Instance.new("Script",TextButton11)
	
	
	local TextButton20 = Instance.new("TextButton",ScreenGui1)
	TextButton20["TextColor3"] = Color3.new(0.623529, 0.631373, 0.67451)
	TextButton20["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton20["Text"] = "OPEN"
	TextButton20["Font"] = Enum.Font.SourceSans
	TextButton20["Name"] = "Open Button"
	TextButton20["Position"] = UDim2.new(0, 0, 0.535194159, 0)
	TextButton20["TextSize"] = 32
	TextButton20["Size"] = UDim2.new(0, 58, 0, 50)
	TextButton20["BorderSizePixel"] = 0
	TextButton20["BackgroundColor3"] = Color3.new(0, 0, 0)
	
	
	local UICorner21 = Instance.new("UICorner",TextButton20)
	UICorner21["CornerRadius"] = UDim.new(0, 12)
	
	
	local Script22 = Instance.new("Script",TextButton20)
	
	
	spawn(function() 
		local script = Script8
		function Clicked()
			script.Parent.Parent.Parent.Parent["Settings Frame"].Visible = false
		end
		script.Parent.MouseButton1Click:Connect(Clicked)
	end)
	spawn(function() 
		local script = Script15
		local NewFolder = Instance.new("Folder")
		NewFolder.Name = script.Parent.Text
		NewFolder.Parent = workspace
	end)
	spawn(function() 
		local script = Script18
		if script.Parent.Text == "Script" then
			Instance.new("Script").Parent = workspace
		end
		if script.Parent.Text == "LocalScript" then
			Instance.new("LocalScript").Parent = workspace
		end
		if script.Parent.Text == "ModuleScript" then
			Instance.new("ModuleScript").Parent = workspace
		end
	end)
	spawn(function() 
		local script = Script19
		function Clicked()
			Instance.new("Folder").Parent = workspace
			Instance.new("Folder").Name = script.Parent.FolderName.Text
		end
		script.Parent.MouseButton1Click:Connect(Clicked)
	end)
	spawn(function()
		local script = Script22
		function Clicked()
			script.Parent.Parent["Settings Frame"].Visible = true
		end
		script.Parent.MouseButton1Click:Connect(Clicked)
	end)
end

Library:AddButton({
	Text = 'Settings';
	Name = "Settings Button";
	Click = function()
		SettingsGui()
	end
})

	local Icon = Instance.new("ImageLabel")
	Icon.Parent = LibraryGui
	Icon.Name = "Icon Main"
	Icon.Size = UDim2.new(0.4, 0.6, 0.3, 0.1)
	Icon.Position = UDim2.new(0.5, 0.4, 1.2, 0.3)
	Icon.Image = Icons.Main
	Icon.BackgroundTransparency = 1

			if Icon then
			Icon:Remove()
			wait(6)
			end

		local UIList = Instance.new("UIListLayout")
		UIList.Parent = LibraryFrm
		UIList.VerticalAlignment = Enum.VerticalAlignment.Top
		UIList.FillDirection = Enum.FillDirection.Horizontal
		UIList.SortOrder = Enum.SortOrder.LayoutOrder
		UIList.Padding = UDim2.new(2.1,0.3,1.2,0.9)

return Library
