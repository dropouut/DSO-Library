-- MADE BY $in#3840 --
-- COPYRIGHT (C) SIN INTERACTIONS --

-- Services
local players = game:GetService("Players")
local tweenservice = game:GetService("TweenService")
local uis = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")

-- Vars
local lp = players.LocalPlayer
local mouse = lp:GetMouse()
local viewport = workspace.CurrentCamera.ViewportSize
local tweeninfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

local Library = {}


function Library:Validate(defaults, options)
	for i, v in pairs(defaults) do
		if options[i] == nil then
			options[i] = v
		end
	end
	return options
end

function Library:Tween(object, goal, callback)
	local tween = tweenservice:Create(object, tweeninfo, goal)
	tween.Completed:Connect(callback or function() end)
	tween:Play()
end

function Library:Init(options)
	options = Library:Validate({
		name = "No Name Library"
	}, options or {})
	
	local GUI = { 
		CurrentTab = nil
	}
	
	-- Main Frame
	do
		GUI["1"] = Instance.new("ScreenGui", runService:IsStudio() and players.LocalPlayer:WaitForChild("PlayerGui") or CoreGui);
		GUI["1"]["Name"] = [[MyLibrary]];
		GUI["1"]["IgnoreGuiInset"] = true

		GUI["2"] = Instance.new("Frame", GUI["1"]);
		GUI["2"]["BackgroundColor3"] = Color3.fromRGB(41,41,41);
		GUI["2"]["AnchorPoint"] = Vector2.new(0, 0);
		GUI["2"]["Size"] = UDim2.new(0, 400, 0, 300);
		GUI["2"]["Position"] = UDim2.fromOffset((viewport.X/2) - (GUI["2"].Size.X.Offset / 2), (viewport.Y/2) - (GUI["2"].Size.Y.Offset / 2));
		GUI["2"]["Name"] = [[Main]];

		GUI["3"] = Instance.new("UICorner", GUI["2"]);
		GUI["3"]["CornerRadius"] = UDim.new(0, 6);

		GUI["b"] = Instance.new("Frame", GUI["2"]);
		GUI["b"]["ZIndex"] = 0;
		GUI["b"]["BorderSizePixel"] = 0;
		GUI["b"]["BackgroundTransparency"] = 1;
		GUI["b"]["Size"] = UDim2.new(1, 0, 1, 0);
		GUI["b"]["Name"] = [[DropShadowHolder]];


		GUI["c"] = Instance.new("ImageLabel", GUI["b"]);
		GUI["c"]["ZIndex"] = 0;
		GUI["c"]["BorderSizePixel"] = 0;
		GUI["c"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
		GUI["c"]["ScaleType"] = Enum.ScaleType.Slice;
		GUI["c"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["c"]["ImageTransparency"] = 0.5;
		GUI["c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		GUI["c"]["Image"] = [[rbxassetid://6015897843]];
		GUI["c"]["Size"] = UDim2.new(1, 44, 1, 44);
		GUI["c"]["Name"] = [[DropShadow]];
		GUI["c"]["BackgroundTransparency"] = 1;
		GUI["c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

		-- StarterGui.MyLibrary.Main.TopBar
		GUI["3"] = Instance.new("Frame", GUI["2"]);
		GUI["3"]["BorderSizePixel"] = 0;
		GUI["3"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
		GUI["3"]["Size"] = UDim2.new(1, 0, 0, 30);
		GUI["3"]["Name"] = [[TopBar]];

		-- StarterGui.MyLibrary.Main.TopBar.UICorner
		GUI["4"] = Instance.new("UICorner", GUI["3"]);
		GUI["4"]["CornerRadius"] = UDim.new(0, 6);

		-- StarterGui.MyLibrary.Main.TopBar.Extension
		GUI["5"] = Instance.new("Frame", GUI["3"]);
		GUI["5"]["BorderSizePixel"] = 0;
		GUI["5"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
		GUI["5"]["AnchorPoint"] = Vector2.new(0, 1);
		GUI["5"]["Size"] = UDim2.new(1, 0, 0.5, 0);
		GUI["5"]["Position"] = UDim2.new(0, 0, 1, 0);
		GUI["5"]["Name"] = [[Extension]];

		-- StarterGui.MyLibrary.Main.TopBar.Title
		GUI["6"] = Instance.new("TextLabel", GUI["3"]);
		GUI["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		GUI["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		-- GUI["6"]["FontFace"] = ;
		GUI["6"]["TextSize"] = 14;
		GUI["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["6"]["Size"] = UDim2.new(0.5, 0, 1, 0);
		GUI["6"]["Text"] = options["name"];
		GUI["6"]["Name"] = options["name"];
		GUI["6"]["Font"] = Enum.Font.Gotham;
		GUI["6"]["BackgroundTransparency"] = 1;

		-- StarterGui.MyLibrary.Main.TopBar.Title.UIPadding
		GUI["7"] = Instance.new("UIPadding", GUI["6"]);
		GUI["7"]["PaddingTop"] = UDim.new(0, 1);
		GUI["7"]["PaddingLeft"] = UDim.new(0, 8);

		-- StarterGui.MyLibrary.Main.TopBar.Close
		GUI["8"] = Instance.new("ImageLabel", GUI["3"]);
		GUI["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["8"]["AnchorPoint"] = Vector2.new(1, 0);
		GUI["8"]["Image"] = [[rbxassetid://11334836905]];
		GUI["8"]["Size"] = UDim2.new(0, 22, 0, 22);
		GUI["8"]["Name"] = [[Close]];
		GUI["8"]["BackgroundTransparency"] = 1;
		GUI["8"]["Position"] = UDim2.new(1, -4, 0, 4);

		-- StarterGui.MyLibrary.Main.TopBar.Line
		GUI["9"] = Instance.new("Frame", GUI["3"]);
		GUI["9"]["BorderSizePixel"] = 0;
		GUI["9"]["BackgroundColor3"] = Color3.fromRGB(82, 82, 82);
		GUI["9"]["AnchorPoint"] = Vector2.new(0, 1);
		GUI["9"]["Size"] = UDim2.new(1, 0, 0, 1);
		GUI["9"]["Position"] = UDim2.new(0, 0, 1, 0);
		GUI["9"]["Name"] = [[Line]];
		
		GUI["19"] = Instance.new("Frame", GUI["2"]);
		GUI["19"]["BackgroundColor3"] = Color3.fromRGB(55, 55, 55);
		GUI["19"]["AnchorPoint"] = Vector2.new(1, 0);
		GUI["19"]["BackgroundTransparency"] = 1;
		GUI["19"]["Size"] = UDim2.new(1, -133, 1, -42);
		GUI["19"]["Position"] = UDim2.new(1, -6, 0, 36);
		GUI["19"]["Name"] = [[ContentContainer]];
	end
	
	-- Navigation
	
	do
		-- StarterGui.MyLibrary.Main.Navigation
		GUI["a"] = Instance.new("Frame", GUI["2"]);
		GUI["a"]["BorderSizePixel"] = 0;
		GUI["a"]["BackgroundColor3"] = Color3.fromRGB(66, 66, 66);
		GUI["a"]["Size"] = UDim2.new(0, 120, 1, -31);
		GUI["a"]["Position"] = UDim2.new(0, 0, 0, 31);
		GUI["a"]["Name"] = [[Navigation]];

		-- StarterGui.MyLibrary.Main.Navigation.UICorner
		GUI["b"] = Instance.new("UICorner", GUI["a"]);
		GUI["b"]["CornerRadius"] = UDim.new(0, 6);

		-- StarterGui.MyLibrary.Main.Navigation.Hide
		GUI["c"] = Instance.new("Frame", GUI["a"]);
		GUI["c"]["BorderSizePixel"] = 0;
		GUI["c"]["BackgroundColor3"] = Color3.fromRGB(66, 66, 66);
		GUI["c"]["Size"] = UDim2.new(1, 0, 0, 20);
		GUI["c"]["Name"] = [[Hide]];

		-- StarterGui.MyLibrary.Main.Navigation.Hide2
		GUI["d"] = Instance.new("Frame", GUI["a"]);
		GUI["d"]["BorderSizePixel"] = 0;
		GUI["d"]["BackgroundColor3"] = Color3.fromRGB(66, 66, 66);
		GUI["d"]["AnchorPoint"] = Vector2.new(1, 0);
		GUI["d"]["Size"] = UDim2.new(0, 20, 1, 0);
		GUI["d"]["Position"] = UDim2.new(1, 0, 0, 0);
		GUI["d"]["Name"] = [[Hide2]];

		
		-- StarterGui.MyLibrary.Main.Navigation.Line
		GUI["17"] = Instance.new("Frame", GUI["a"]);
		GUI["17"]["BorderSizePixel"] = 0;
		GUI["17"]["BackgroundColor3"] = Color3.fromRGB(82, 82, 82);
		GUI["17"]["Size"] = UDim2.new(0, 1, 1, 0);
		GUI["17"]["Position"] = UDim2.new(1, 0, 0, 0);
		GUI["17"]["Name"] = [[Line]];
		
		-- StarterGui.MyLibrary.Main.Navigation.ButtonHolder
		GUI["e"] = Instance.new("Frame", GUI["a"]);
		GUI["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["e"]["BackgroundTransparency"] = 1;
		GUI["e"]["Size"] = UDim2.new(1, 0, 1, 0);
		GUI["e"]["Name"] = [[ButtonHolder]];

		-- StarterGui.MyLibrary.Main.Navigation.ButtonHolder.UIPadding
		GUI["f"] = Instance.new("UIPadding", GUI["e"]);
		GUI["f"]["PaddingTop"] = UDim.new(0, 8);
		GUI["f"]["PaddingBottom"] = UDim.new(0, 8);

		-- StarterGui.MyLibrary.Main.Navigation.ButtonHolder.UIListLayout
		GUI["10"] = Instance.new("UIListLayout", GUI["e"]);
		GUI["10"]["Padding"] = UDim.new(0, 1);
		GUI["10"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


	end
	
	function GUI:Tab(options)
		options = Library:Validate({
			name = "Preview Tab",
			Icon = "rbxassetid://11334829725"
		}, options or {})
		
		local Tab = {
			Hover = false,
			Active = false
		}
		
		
		

		--Render
		do
			
			
			-- StarterGui.MyLibrary.Main.Navigation.ButtonHolder.Inactive
			Tab["14"] = Instance.new("TextLabel", GUI["e"]);
			Tab["14"]["BorderSizePixel"] = 0;
			Tab["14"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			Tab["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			-- Tab["14"]["FontFace"] = ;
			Tab["14"]["TextSize"] = 12;
			Tab["14"]["TextColor3"] = Color3.fromRGB(200, 200, 200);
			Tab["14"]["Size"] = UDim2.new(1, 0, 0, 24);
			Tab["14"]["Text"] = options.name;
			Tab["14"]["Name"] = [[Inactive]];
			Tab["14"]["Font"] = Enum.Font.Ubuntu;
			Tab["14"]["BackgroundTransparency"] = 1;

			-- StarterGui.MyLibrary.Main.Navigation.ButtonHolder.Inactive.UIPadding
			Tab["15"] = Instance.new("UIPadding", Tab["14"]);
			Tab["15"]["PaddingLeft"] = UDim.new(0, 28);

			-- StarterGui.MyLibrary.Main.Navigation.ButtonHolder.Inactive.Icon
			Tab["16"] = Instance.new("ImageLabel", Tab["14"]);
			Tab["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Tab["16"]["ImageColor3"] = Color3.fromRGB(190, 190, 190);
			Tab["16"]["AnchorPoint"] = Vector2.new(0, 0.5);
			Tab["16"]["Image"] = options.Icon;
			Tab["16"]["Size"] = UDim2.new(0, 20, 0, 20);
			Tab["16"]["Name"] = [[Icon]];
			Tab["16"]["BackgroundTransparency"] = 1;
			Tab["16"]["Position"] = UDim2.new(0, -24, 0.5, 0);
			
			-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab
			Tab["1a"] = Instance.new("ScrollingFrame", GUI["19"]);
			Tab["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Tab["1a"]["BackgroundTransparency"] = 1;
			Tab["1a"]["Size"] = UDim2.new(1, 0, 1, 0);
			Tab["1a"]["Selectable"] = false;
			Tab["1a"]["ScrollBarThickness"] = 0;
			Tab["1a"]["Name"] = [[HomeTab]];
			Tab["1a"]["SelectionGroup"] = false;
			Tab["1a"]["Visible"] = false;
			
			Tab["1x"] = Instance.new("UIPadding", Tab["1a"]);
			Tab["1x"]["PaddingTop"] = UDim.new(0, 1);
			Tab["1x"]["PaddingRight"] = UDim.new(0, 1);
			Tab["1x"]["PaddingBottom"] = UDim.new(0, 1);
			Tab["1x"]["PaddingLeft"] = UDim.new(0, 1);
			
			GUI["2x"] = Instance.new("UIListLayout", Tab["1a"]);
			GUI["2x"]["Padding"] = UDim.new(0, 6);
			GUI["2x"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
		end
		
		
		-- Methods
		
		function Tab:Activate()
			if not Tab.Active then
				if GUI.CurrentTab ~= nil then
					GUI.CurrentTab:Deactivate()
				end
				Tab.Active = true
				Library:Tween(Tab["14"], {BackgroundTransparency = .8})
				Library:Tween(Tab["14"], {TextColor3 = Color3.fromRGB(255,255,255)})
				Library:Tween(Tab["16"], {ImageColor3 = Color3.fromRGB(255,255,255)})
				Tab["1a"].Visible = true
				GUI.CurrentTab = Tab
			end
		end
		
		function Tab:Deactivate()
			if Tab.Active then
				Tab.Active = false
				Tab.Hover = false
				Library:Tween(Tab["14"], {TextColor3 = Color3.fromRGB(200,200,200)})
				Library:Tween(Tab["16"], {ImageColor3 = Color3.fromRGB(200,200,200)})
				Library:Tween(Tab["14"], {BackgroundTransparency = 1})
				Tab["1a"].Visible = false
			end
		end
		
		-- Logic
		do
			
			Tab["14"].MouseEnter:Connect(function()
				Tab.Hover = true

				if not Tab.Active then
					Library:Tween(Tab["14"], {TextColor3 = Color3.fromRGB(255,255,255)})
					Library:Tween(Tab["16"], {ImageColor3 = Color3.fromRGB(255,255,255)})
				end
			end)

			Tab["14"].MouseLeave:Connect(function()
				Tab.Hover = false


				if not Tab.Active then
					Library:Tween(Tab["14"], {TextColor3 = Color3.fromRGB(200,200,200)})
					Library:Tween(Tab["16"], {ImageColor3 = Color3.fromRGB(200,200,200)})

				end
			end)

			uis.InputBegan:Connect(function(input, gpe)
				if gpe then return end

				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					if Tab.Hover then
						Tab:Activate()
					end
				end
			end)

			if GUI.CurrentTab == nil then
				Tab:Activate()
			end
		end
		
		
		function Tab:Button(options)
			options = Library:Validate({
				name = "Button",
				callback = function() end
			}, options or {})
			
			local Button = { 
				Hover = false, 
				MouseDown = false
			}
			
			-- Render
			do
				
				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Button
				Button["1b"] = Instance.new("Frame", Tab["1a"]);
				Button["1b"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
				Button["1b"]["Size"] = UDim2.new(0.9900000095367432, 0, 0, 32);
				Button["1b"]["Name"] = [[Button]];

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Button.UICorner
				Button["1c"] = Instance.new("UICorner", Button["1b"]);
				Button["1c"]["CornerRadius"] = UDim.new(0, 4);
	
				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Button.UIStroke
				Button["1d"] = Instance.new("UIStroke", Button["1b"]);
				Button["1d"]["Color"] = Color3.fromRGB(82, 82, 82);
				Button["1d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
				
				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Button.Title
				Button["1e"] = Instance.new("TextLabel", Button["1b"]);
				Button["1e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Button["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				-- Button["1e"]["FontFace"] = ;
				Button["1e"]["TextSize"] = 14;
				Button["1e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Button["1e"]["Size"] = UDim2.new(1, -20, 1, 0);
				Button["1e"]["Text"] = options.name;
				Button["1e"]["Name"] = [[Title]];
				Button["1e"]["Font"] = Enum.Font.Ubuntu;
				Button["1e"]["BackgroundTransparency"] = 1;
				
				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Button.UIPadding
				Button["1f"] = Instance.new("UIPadding", Button["1b"]);
				Button["1f"]["PaddingTop"] = UDim.new(0, 6);
				Button["1f"]["PaddingRight"] = UDim.new(0, 6);
				Button["1f"]["PaddingBottom"] = UDim.new(0, 6);
				Button["1f"]["PaddingLeft"] = UDim.new(0, 6);
				
				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Button.Icon
				Button["20"] = Instance.new("ImageLabel", Button["1b"]);
				Button["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Button["20"]["AnchorPoint"] = Vector2.new(1, 0);
				Button["20"]["Image"] = [[rbxassetid://11334947695]];
				Button["20"]["Size"] = UDim2.new(0, 20, 0, 20);
				Button["20"]["Name"] = [[Icon]];
				Button["20"]["BackgroundTransparency"] = 1;
				Button["20"]["Position"] = UDim2.new(1, 0, 0, 0);
				
			end
			
			function Button:SetText(text)
				Button["1e"].Text = text
				options.name = text
			end
			
			function Button:SetCallback(fn)
				options.callback = fn
			end
			
			do
				Button["1b"].MouseEnter:Connect(function()
					Button.Hover = true

					Library:Tween(Button["1d"], {Color = Color3.fromRGB(102, 102, 102)})
				end)

				Button["1b"].MouseLeave:Connect(function()
					Button.Hover = false

					if not Button.MouseDown then
						Library:Tween(Button["1d"], {Color = Color3.fromRGB(82, 82, 82)})
					end
				end)

				uis.InputBegan:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 and Button.Hover then
						Button.MouseDown = true
						Library:Tween(Button["1b"], {BackgroundColor3 = Color3.fromRGB(57, 57, 57)})
						Library:Tween(Button["1d"], {Color = Color3.fromRGB(200, 200, 200)})
						options.callback()
					end
				end)

				uis.InputEnded:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						Button.MouseDown = false
						if Button.Hover then
							Library:Tween(Button["1b"], {BackgroundColor3 = Color3.fromRGB(27, 27, 27)})
							Library:Tween(Button["1d"], {Color = Color3.fromRGB(102, 102, 102)})
						else
							Library:Tween(Button["1b"], {BackgroundColor3 = Color3.fromRGB(27, 27, 27)})
							Library:Tween(Button["1d"], {Color = Color3.fromRGB(82, 82, 82)})
						end
					end
				end)
			end
			
			return Button
		end
		
		function Tab:Warning(options)
			options = Library:Validate({
				message = "I am a warning"
			}, options or {})
			
			local Warning = {}
			-- Render
			do
				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Warning
				Warning["23"] = Instance.new("Frame", Tab["1a"]);
				Warning["23"]["BackgroundColor3"] = Color3.fromRGB(44, 37, 4);
				Warning["23"]["Size"] = UDim2.new(0.9900000095367432, 0, 0, 26);
				Warning["23"]["Name"] = [[Warning]];

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Warning.UICorner
				Warning["24"] = Instance.new("UICorner", Warning["23"]);
				Warning["24"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Warning.UIStroke
				Warning["25"] = Instance.new("UIStroke", Warning["23"]);
				Warning["25"]["Color"] = Color3.fromRGB(166, 138, 12);
				Warning["25"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Warning.Title
				Warning["26"] = Instance.new("TextLabel", Warning["23"]);
				Warning["26"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Warning["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				-- Warning["26"]["FontFace"] = ;
				Warning["26"]["TextSize"] = 14;
				Warning["26"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Warning["26"]["Size"] = UDim2.new(1, 0, 1, 0);
				Warning["26"]["Text"] = options.message;
				Warning["26"]["Name"] = [[Title]];
				Warning["26"]["Font"] = Enum.Font.Ubuntu;
				Warning["26"]["BackgroundTransparency"] = 1;
				Warning["26"]["TextWrapped"] = true;
				Warning["26"]["TextYAlignment"] = Enum.TextYAlignment.Top

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Warning.UIPadding
				Warning["27"] = Instance.new("UIPadding", Warning["23"]);
				Warning["27"]["PaddingTop"] = UDim.new(0, 6);
				Warning["27"]["PaddingRight"] = UDim.new(0, 6);
				Warning["27"]["PaddingBottom"] = UDim.new(0, 6);
				Warning["27"]["PaddingLeft"] = UDim.new(0, 6);

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Warning.Warning
				Warning["28"] = Instance.new("ImageLabel", Warning["23"]);
				Warning["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Warning["28"]["ImageColor3"] = Color3.fromRGB(166, 138, 12);
				Warning["28"]["AnchorPoint"] = Vector2.new(1, 0);
				Warning["28"]["Image"] = [[rbxassetid://11335032193]];
				Warning["28"]["Size"] = UDim2.new(0, 20, 0, 20);
				Warning["28"]["Name"] = [[Warning]];
				Warning["28"]["BackgroundTransparency"] = 1;
				Warning["28"]["Position"] = UDim2.new(0, -4, 0, -3);
			end
			
			-- methods
			function Warning:SetText(text)
				options.message = text
				Warning:_update()
			end
			
			function Warning:_update()
				Warning["26"].Text = options.message
				
				Warning["26"].Size = UDim2.new(Warning["26"].Size.X.Scale, Warning["26"].Size.X.Offset, 0, math.huge)
				Warning["26"].Size = UDim2.new(Warning["26"].Size.X.Scale, Warning["26"].Size.X.Offset, 0, Warning["26"].TextBounds.Y)
				Library:Tween(Warning["23"], {Size = UDim2.new(Warning["23"].Size.X.Scale, Warning["23"].Size.X.Offset, 0, Warning["26"].TextBounds.Y + 12)})
			end
			
			
			Warning:_update()
			return Warning
		end
		
		function Tab:Toggle(options)
			options = Library:Validate({
				title = "",
				callback = function() end
			}, options or {})
			
			-- Render
			local Toggle = {
				Hover = false,
				MouseDown = false,
				State = false
			}
			
			do
				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.ToggleInactive
				Toggle["51"] = Instance.new("Frame", Tab["1a"]);
				Toggle["51"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
				Toggle["51"]["Size"] = UDim2.new(0.9900000095367432, 0, 0, 32);
				Toggle["51"]["Name"] = [[ToggleInactive]];

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.ToggleInactive.UICorner
				Toggle["52"] = Instance.new("UICorner", Toggle["51"]);
				Toggle["52"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.ToggleInactive.UIStroke
				Toggle["53"] = Instance.new("UIStroke", Toggle["51"]);
				Toggle["53"]["Color"] = Color3.fromRGB(82, 82, 82);
				Toggle["53"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.ToggleInactive.Title
				Toggle["54"] = Instance.new("TextLabel", Toggle["51"]);
				Toggle["54"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Toggle["54"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				-- Toggle["54"]["FontFace"] = ;
				Toggle["54"]["TextSize"] = 14;
				Toggle["54"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["54"]["Size"] = UDim2.new(1, -26, 1, 0);
				Toggle["54"]["Text"] = options.title;
				Toggle["54"]["Name"] = [[Title]];
				Toggle["54"]["Font"] = Enum.Font.Ubuntu;
				Toggle["54"]["BackgroundTransparency"] = 1;

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.ToggleInactive.UIPadding
				Toggle["55"] = Instance.new("UIPadding", Toggle["51"]);
				Toggle["55"]["PaddingTop"] = UDim.new(0, 6);
				Toggle["55"]["PaddingRight"] = UDim.new(0, 6);
				Toggle["55"]["PaddingBottom"] = UDim.new(0, 6);
				Toggle["55"]["PaddingLeft"] = UDim.new(0, 6);

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.ToggleInactive.CheckmarkHolder
				Toggle["56"] = Instance.new("Frame", Toggle["51"]);
				Toggle["56"]["BackgroundColor3"] = Color3.fromRGB(57, 57, 57);
				Toggle["56"]["AnchorPoint"] = Vector2.new(1, 0);
				Toggle["56"]["Size"] = UDim2.new(0, 16, 0, 16);
				Toggle["56"]["Position"] = UDim2.new(1, 0, 0.10000000149011612, 0);
				Toggle["56"]["Name"] = [[CheckmarkHolder]];

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.ToggleInactive.CheckmarkHolder.UICorner
				Toggle["57"] = Instance.new("UICorner", Toggle["56"]);
				Toggle["57"]["CornerRadius"] = UDim.new(0, 2);

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.ToggleInactive.CheckmarkHolder.UIStroke
				Toggle["58"] = Instance.new("UIStroke", Toggle["56"]);
				Toggle["58"]["Color"] = Color3.fromRGB(82, 82, 82);
				Toggle["58"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.ToggleInactive.CheckmarkHolder.Checkmark
				Toggle["59"] = Instance.new("ImageLabel", Toggle["56"]);
				Toggle["59"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["59"]["ImageTransparency"] = 1;
				Toggle["59"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Toggle["59"]["Image"] = [[rbxassetid://11343656943]];
				Toggle["59"]["Size"] = UDim2.new(1, -2, 1, -2);
				Toggle["59"]["Name"] = [[Checkmark]];
				Toggle["59"]["BackgroundTransparency"] = 1;
				Toggle["59"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.ToggleActive
				Toggle["5a"] = Instance.new("Frame", Toggle["1a"]);
				Toggle["5a"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
				Toggle["5a"]["Size"] = UDim2.new(0.9900000095367432, 0, 0, 32);
				Toggle["5a"]["Name"] = [[ToggleActive]];

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.ToggleActive.UICorner
				Toggle["5b"] = Instance.new("UICorner", Toggle["5a"]);
				Toggle["5b"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.ToggleActive.UIStroke
				Toggle["5c"] = Instance.new("UIStroke", Toggle["5a"]);
				Toggle["5c"]["Color"] = Color3.fromRGB(82, 82, 82);
				Toggle["5c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.ToggleActive.Title
				Toggle["5d"] = Instance.new("TextLabel", Toggle["5a"]);
				Toggle["5d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Toggle["5d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				-- Toggle["5d"]["FontFace"] = ;
				Toggle["5d"]["TextSize"] = 14;
				Toggle["5d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["5d"]["Size"] = UDim2.new(1, -26, 1, 0);
				Toggle["5d"]["Text"] = [[Toggle]];
				Toggle["5d"]["Name"] = [[Title]];
				Toggle["5d"]["Font"] = Enum.Font.Ubuntu;
				Toggle["5d"]["BackgroundTransparency"] = 1;

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.ToggleActive.UIPadding
				Toggle["5e"] = Instance.new("UIPadding", Toggle["5a"]);
				Toggle["5e"]["PaddingTop"] = UDim.new(0, 6);
				Toggle["5e"]["PaddingRight"] = UDim.new(0, 6);
				Toggle["5e"]["PaddingBottom"] = UDim.new(0, 6);
				Toggle["5e"]["PaddingLeft"] = UDim.new(0, 6);

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.ToggleActive.CheckmarkHolder
				Toggle["5f"] = Instance.new("Frame", Toggle["5a"]);
				Toggle["5f"]["BackgroundColor3"] = Color3.fromRGB(90, 148, 72);
				Toggle["5f"]["AnchorPoint"] = Vector2.new(1, 0);
				Toggle["5f"]["Size"] = UDim2.new(0, 16, 0, 16);
				Toggle["5f"]["Position"] = UDim2.new(1, 0, 0.10000000149011612, 0);
				Toggle["5f"]["Name"] = [[CheckmarkHolder]];

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.ToggleActive.CheckmarkHolder.UICorner
				Toggle["60"] = Instance.new("UICorner", Toggle["5f"]);
				Toggle["60"]["CornerRadius"] = UDim.new(0, 2);

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.ToggleActive.CheckmarkHolder.UIStroke
				Toggle["61"] = Instance.new("UIStroke", Toggle["5f"]);
				Toggle["61"]["Color"] = Color3.fromRGB(0, 255, 60);
				Toggle["61"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.ToggleActive.CheckmarkHolder.Checkmark
				Toggle["62"] = Instance.new("ImageLabel", Toggle["5f"]);
				Toggle["62"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["62"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Toggle["62"]["Image"] = [[rbxassetid://11343656943]];
				Toggle["62"]["Size"] = UDim2.new(1, -2, 1, -2);
				Toggle["62"]["Name"] = [[Checkmark]];
				Toggle["62"]["BackgroundTransparency"] = 1;
				Toggle["62"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
			end
			
			
			function Toggle:Toggle(b)
				if b == nil then
					Toggle.State = not Toggle.State
				else
					Toggle.State = b
				end
				
				if Toggle.State then
					Library:Tween(Toggle["56"], {BackgroundColor3 = Color3.fromRGB(115, 191, 92)})
					Library:Tween(Toggle["62"], {ImageTransparency = 0})
				else
					Library:Tween(Toggle["56"], {BackgroundColor3 = Color3.fromRGB(64, 64, 64)})
					Library:Tween(Toggle["62"], {ImageTransparency = 1})
				end
				
				
				options.callback(Toggle.State)
			end
			
			do
				Toggle["51"].MouseEnter:Connect(function()
					Toggle.Hover = true
					
					Library:Tween(Toggle["5c"], {Color = Color3.fromRGB(102, 102, 102)})
				end)
				
				Toggle["51"].MouseLeave:Connect(function()
					Toggle.Hover = false
					
					if not Toggle.MouseDown then
						Library:Tween(Toggle["5c"], {Color = Color3.fromRGB(82, 82, 82)})
					end
				end)
				
				uis.InputBegan:Connect(function(input, gpe)
					if gpe then return end
					
					if input.UserInputType == Enum.UserInputType.MouseButton1  and Toggle.Hover then
						Toggle.MouseDown = true
						Library:Tween(Toggle["51"], {BackgroundColor3 = Color3.fromRGB(57, 57, 57)})
						Library:Tween(Toggle["5c"], {Color = Color3.fromRGB(200, 200, 200)})
						Toggle:Toggle()
					end
				end)
				
				uis.InputEnded:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						Toggle.MouseDown = false

						if Toggle.Hover then
							Library:Tween(Toggle["51"], {BackgroundColor3 = Color3.fromRGB(27, 27, 27)})
							Library:Tween(Toggle["5c"], {Color = Color3.fromRGB(102, 102, 102)})
						else
							Library:Tween(Toggle["51"], {BackgroundColor3 = Color3.fromRGB(27, 27, 27)})
							Library:Tween(Toggle["5c"], {Color = Color3.fromRGB(82, 82, 82)})
						end
					end
				end)			
			end
			return Toggle
		end
		
		
		
		
		function Tab:Slider(options)
			options = Library:Validate({
				Title = "Preview Slider",
				min = 0,
				max = 100,
				default = 50,
				callback = function(v) print(v) end
			}, options or {})
			
			local Slider = {
				MouseDown = false,
				Hover = false,
				Connection = nil,
				Options = options
			}
			
			
			-- Render
			do
				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Slider
				Slider["35"] = Instance.new("Frame", Tab["1a"]);
				Slider["35"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
				Slider["35"]["Size"] = UDim2.new(0.9900000095367432, 0, 0, 38);
				Slider["35"]["Name"] = [[Slider]];

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Slider.UICorner
				Slider["36"] = Instance.new("UICorner", Slider["35"]);
				Slider["36"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Slider.UIStroke
				Slider["37"] = Instance.new("UIStroke", Slider["35"]);
				Slider["37"]["Color"] = Color3.fromRGB(82, 82, 82);
				Slider["37"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Slider.Title
				Slider["38"] = Instance.new("TextLabel", Slider["35"]);
				Slider["38"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Slider["38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				-- Slider["38"]["FontFace"] = ;
				Slider["38"]["TextSize"] = 14;
				Slider["38"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["38"]["Size"] = UDim2.new(1, -24, 1, -10);
				Slider["38"]["Text"] = options.Title;
				Slider["38"]["Name"] = [[Title]];
				Slider["38"]["Font"] = Enum.Font.Ubuntu;
				Slider["38"]["BackgroundTransparency"] = 1;

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Slider.UIPadding
				Slider["39"] = Instance.new("UIPadding", Slider["35"]);
				Slider["39"]["PaddingTop"] = UDim.new(0, 6);
				Slider["39"]["PaddingRight"] = UDim.new(0, 6);
				Slider["39"]["PaddingBottom"] = UDim.new(0, 6);
				Slider["39"]["PaddingLeft"] = UDim.new(0, 6);

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Slider.Value
				Slider["3a"] = Instance.new("TextLabel", Slider["35"]);
				Slider["3a"]["TextXAlignment"] = Enum.TextXAlignment.Right;
				Slider["3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				-- Slider["3a"]["FontFace"] = ;
				Slider["3a"]["TextSize"] = 14;
				Slider["3a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["3a"]["AnchorPoint"] = Vector2.new(1, 0);
				Slider["3a"]["Size"] = UDim2.new(0, 24, 1, -10);
				Slider["3a"]["Text"] = tostring(options.default);
				Slider["3a"]["Name"] = [[Value]];
				Slider["3a"]["Font"] = Enum.Font.Ubuntu;
				Slider["3a"]["BackgroundTransparency"] = 1;
				Slider["3a"]["Position"] = UDim2.new(1, 0, 0, 0);

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Slider.SliderBack
				Slider["3b"] = Instance.new("Frame", Slider["35"]);
				Slider["3b"]["BorderSizePixel"] = 0;
				Slider["3b"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
				Slider["3b"]["AnchorPoint"] = Vector2.new(0, 1);
				Slider["3b"]["Size"] = UDim2.new(1, 0, 0, 4);
				Slider["3b"]["Position"] = UDim2.new(0, 0, 1, 0);
				Slider["3b"]["Name"] = [[SliderBack]];

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Slider.SliderBack.UICorner
				Slider["3c"] = Instance.new("UICorner", Slider["3b"]);


				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Slider.SliderBack.UIStroke
				Slider["3d"] = Instance.new("UIStroke", Slider["3b"]);
				Slider["3d"]["Color"] = Color3.fromRGB(64, 64, 64);
				Slider["3d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Slider.SliderBack.Draggable
				Slider["3e"] = Instance.new("Frame", Slider["3b"]);
				Slider["3e"]["BackgroundColor3"] = Color3.fromRGB(57, 57, 57);
				Slider["3e"]["Size"] = UDim2.new(0.5, 0, 1, 0);
				Slider["3e"]["Name"] = [[Draggable]];

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Slider.SliderBack.Draggable.UICorner
				Slider["3f"] = Instance.new("UICorner", Slider["3e"]);
			end
			
			-- Methods
			function Slider:SetValue(v)
				if v == nil then
					local precentage = math.clamp((mouse.X - Slider["3b"].AbsolutePosition.X) / (Slider["3b"].AbsoluteSize.X), 0, 1)
					local value = math.floor(((options.max - options.min) * precentage) + options.min)
					
					Slider["3a"].Text = tostring(value)
					Slider["3e"].Size = UDim2.fromScale(precentage, 1)
				else
					Slider["3a"].Text = tostring(v)
					Slider["3e"].Size = UDim2.fromScale(((v - options.min) / (options.max - options.min)), 1)
				end
				options.callback(Slider:GetValue())
			end
			
			function Slider:GetValue()
				return tonumber(Slider["3a"].Text)
			end
			
			-- Logic
			do
				
				
				Slider["35"].MouseEnter:Connect(function()
					Slider.Hover = true
					
					Library:Tween(Slider["37"], {Color = Color3.fromRGB(102, 102, 102)})
					Library:Tween(Slider["3d"], {Color = Color3.fromRGB(102, 102, 102)})
					Library:Tween(Slider["3e"], {BackgroundColor3 = Color3.fromRGB(102, 102, 102)})
				end)
				
				Slider["35"].MouseLeave:Connect(function()
					Slider.Hover = false
					
					if not Slider.MouseDown then
						Library:Tween(Slider["37"], {Color = Color3.fromRGB(82, 82, 82)})
						Library:Tween(Slider["3d"], {Color = Color3.fromRGB(82, 82, 82)})
						Library:Tween(Slider["3e"], {BackgroundColor3 = Color3.fromRGB(102, 102, 102)})
					end
				end)
				
				uis.InputBegan:Connect(function(input, gpe)
					if gpe then return end
					
					if input.UserInputType == Enum.UserInputType.MouseButton1 and Slider.Hover then
						Slider.MouseDown = true
						Library:Tween(Slider["35"], {BackgroundColor3 = Color3.fromRGB(57, 57, 57)})
						Library:Tween(Slider["37"], {Color = Color3.fromRGB(200, 200, 200)})
						Library:Tween(Slider["3d"], {Color = Color3.fromRGB(200, 200, 200)})
						Library:Tween(Slider["3e"], {BackgroundColor3 = Color3.fromRGB(200, 200, 200)})
						if not Slider.Connection then
							Slider.Connection = runService.RenderStepped:Connect(function()
								Slider:SetValue()
							end)
						end
					end
				end)
				
				uis.InputEnded:Connect(function(input, gpe)
					if gpe then return end
					
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						Slider.MouseDown = false
						
						if Slider.Hover then
							Library:Tween(Slider["35"], {BackgroundColor3 = Color3.fromRGB(27,27,27)})
							Library:Tween(Slider["37"], {Color = Color3.fromRGB(102, 102, 102)})
							Library:Tween(Slider["3d"], {Color = Color3.fromRGB(102, 102, 102)})
						else
							Library:Tween(Slider["35"], {BackgroundColor3 = Color3.fromRGB(27,27,27)})
							Library:Tween(Slider["37"], {Color = Color3.fromRGB(82, 82, 82)})
							Library:Tween(Slider["3d"], {Color = Color3.fromRGB(82, 82, 82)})
							Library:Tween(Slider["3e"], {BackgroundColor3 = Color3.fromRGB(82, 82, 82)})
						end
						
						if Slider.Connection then Slider.Connection:Disconnect() end
						Slider.Connection = nil
					end
				end)
			end
			
			return Slider
		end
		
		
		function Tab:Dropdown(options)
			options = Library:Validate({
				title = "Preview Slider",
				callback = function(v) print(v) end,
				items = {}
			}, options or {})

			local Dropdown = {
				Items = {
					["id"] = { 
						"value"
					}
				},
				Open = false,
				MouseDown = false,
				Hover = false,
				HoveringItem = false
			}

			-- Render
			do
				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Dropdown
				Dropdown["45"] = Instance.new("Frame", Tab["1a"]);
				Dropdown["45"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
				Dropdown["45"]["Size"] = UDim2.new(1, 0, 0, 30);
				Dropdown["45"]["ClipsDescendants"] = true;
				Dropdown["45"]["Name"] = [[Dropdown]];

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Dropdown.UICorner
				Dropdown["46"] = Instance.new("UICorner", Dropdown["45"]);
				Dropdown["46"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Dropdown.UIStroke
				Dropdown["47"] = Instance.new("UIStroke", Dropdown["45"]);
				Dropdown["47"]["Color"] = Color3.fromRGB(82, 82, 82);
				Dropdown["47"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Dropdown.Title
				Dropdown["48"] = Instance.new("TextLabel", Dropdown["45"]);
				Dropdown["48"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Dropdown["48"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Dropdown["48"]["TextSize"] = 14;
				Dropdown["48"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Dropdown["48"]["Size"] = UDim2.new(1, -20, 0, 20);
				Dropdown["48"]["Text"] = options.title;
				Dropdown["48"]["Name"] = [[Title]];
				Dropdown["48"]["Font"] = Enum.Font.Ubuntu;
				Dropdown["48"]["BackgroundTransparency"] = 1;

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Dropdown.UIPadding
				Dropdown["49"] = Instance.new("UIPadding", Dropdown["45"]);
				Dropdown["49"]["PaddingTop"] = UDim.new(0, 6);
				Dropdown["49"]["PaddingRight"] = UDim.new(0, 6);
				Dropdown["49"]["PaddingBottom"] = UDim.new(0, 6);
				Dropdown["49"]["PaddingLeft"] = UDim.new(0, 6);

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Dropdown.Icon
				Dropdown["4a"] = Instance.new("ImageLabel", Dropdown["45"]);
				Dropdown["4a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Dropdown["4a"]["AnchorPoint"] = Vector2.new(1, 0);
				Dropdown["4a"]["Image"] = [[rbxassetid://10889644850]];
				Dropdown["4a"]["Size"] = UDim2.new(0, 20, 0, 20);
				Dropdown["4a"]["Name"] = [[Icon]];
				Dropdown["4a"]["BackgroundTransparency"] = 1;
				Dropdown["4a"]["Position"] = UDim2.new(1, 0, 0, 0);

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Dropdown.OptionHolder
				Dropdown["4b"] = Instance.new("Frame", Dropdown["45"]);
				Dropdown["4b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Dropdown["4b"]["BackgroundTransparency"] = 1;
				Dropdown["4b"]["Size"] = UDim2.new(1, 0, 1, -24);
				Dropdown["4b"]["Position"] = UDim2.new(0, 0, 0, 26);
				Dropdown["4b"]["Visible"] = false;
				Dropdown["4b"]["Name"] = [[OptionHolder]];

				-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Dropdown.OptionHolder.UIListLayout
				Dropdown["4c"] = Instance.new("UIListLayout", Dropdown["4b"]);
				Dropdown["4c"]["Padding"] = UDim.new(0, 4);
				Dropdown["4c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
			end

			-- Methods
			do
				function Dropdown:Add(id, value)
					local Item = {
						Hover = false,
						MouseDown = false
					}

					if Dropdown.Items[id] ~= nil then
						return
					end

					Dropdown.Items[id] = {
						instance = {},
						value = value
					}
					-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Dropdown.OptionHolder.Inactive Option
					Dropdown.Items[id].instance["4d"] = Instance.new("TextLabel", Dropdown["4b"]);
					Dropdown.Items[id].instance["4d"]["BackgroundColor3"] = Color3.fromRGB(57, 57, 57);
					Dropdown.Items[id].instance["4d"]["TextSize"] = 12;
					Dropdown.Items[id].instance["4d"]["TextColor3"] = Color3.fromRGB(203, 203, 203);
					Dropdown.Items[id].instance["4d"]["Size"] = UDim2.new(1, 0, 0, 16);
					Dropdown.Items[id].instance["4d"]["Text"] = id;
					Dropdown.Items[id].instance["4d"]["Name"] = [[Inactive Option]];
					Dropdown.Items[id].instance["4d"]["Font"] = Enum.Font.Ubuntu;

					-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Dropdown.OptionHolder.Inactive Option.UIStroke
					Dropdown.Items[id].instance["4e"] = Instance.new("UIStroke", Dropdown.Items[id].instance["4d"]);
					Dropdown.Items[id].instance["4e"]["Color"] = Color3.fromRGB(82, 82, 82);
					Dropdown.Items[id].instance["4e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

					-- StarterGui.MyLibrary.Main.ContentContainer.HomeTab.Dropdown.OptionHolder.Inactive Option.UICorner
					Dropdown.Items[id].instance["4f"] = Instance.new("UICorner", Dropdown.Items[id].instance["4d"]);
					Dropdown.Items[id].instance["4f"]["CornerRadius"] = UDim.new(0, 2);

					Dropdown.Items[id].instance["4d"].MouseEnter:Connect(function()
						Item.Hover = true
						Dropdown.HoveringItem = true

						Library:Tween(Dropdown.Items[id].instance["4e"], {Color = Color3.fromRGB(102, 102, 102)})
					end)

					Dropdown.Items[id].instance["4d"].MouseLeave:Connect(function()
						Item.Hover = false
						Dropdown.HoveringItem = false

						if not Item.MouseDown then
							Library:Tween(Dropdown.Items[id].instance["4e"], {Color = Color3.fromRGB(82, 82, 82)})
						end
					end)

					uis.InputBegan:Connect(function(input, gpe)
						if gpe then return end

						if Dropdown.Items[id] == nil then return end

						if input.UserInputType == Enum.UserInputType.MouseButton1 and Item.Hover then
							Item.MouseDown = true
							Library:Tween(Dropdown.Items[id].instance["4d"], {BackgroundColor3 = Color3.fromRGB(57, 57, 57)})
							Library:Tween(Dropdown.Items[id].instance["4e"], {Color = Color3.fromRGB(200, 200, 200)})
							options.callback(value)
							Dropdown:Toggle()
						end
					end)

					uis.InputEnded:Connect(function(input, gpe)
						if gpe then return end

						if Dropdown.Items[id] == nil then return end

						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							Item.MouseDown = false

							if Item.Hover then
								Library:Tween(Dropdown.Items[id].instance["4d"], {BackgroundColor3 = Color3.fromRGB(27, 27, 27)})
								Library:Tween(Dropdown.Items[id].instance["4e"], {Color = Color3.fromRGB(102, 102, 102)})
							else
								Library:Tween(Dropdown.Items[id].instance["4d"], {BackgroundColor3 = Color3.fromRGB(27, 27, 27)})
								Library:Tween(Dropdown.Items[id].instance["4e"], {Color = Color3.fromRGB(82, 82, 82)})
							end
						end
					end)
				end

				function Dropdown:Remove(id)
					if Dropdown.Items[id] ~= nil then
						if Dropdown.Items[id].instance ~= nil then
							for i, v in pairs(Dropdown.Items[id].instance) do
								v:Destroy()
							end
						end
						Dropdown.Items[id] = nil
					end
				end

				function Dropdown:Clear()
					for i, v in pairs(Dropdown.Items) do
						Dropdown:Remove(i)
					end
				end

				function Dropdown:Toggle()
					Dropdown.Open = not Dropdown.Open

					if not Dropdown.Open then
						Library:Tween(Dropdown["45"], {Size = UDim2.new(1, 0, 0, 30)}, function()
							Dropdown["4b"].Visible = false
						end)
					else
						local count = 0
						for i, v in pairs(Dropdown.Items) do
							if v ~= nil then
								count += 1
							end
						end

						Dropdown["4b"].Visible = true
						Library:Tween(Dropdown["45"], {Size = UDim2.new(1, 0, 0, 30 + (count * 16) + 1)})
					end
				end
			end

			-- Logic
			do
				Dropdown["45"].MouseEnter:Connect(function()
					Dropdown.Hover = true

					Library:Tween(Dropdown["47"], {Color = Color3.fromRGB(102, 102, 102)})
				end)

				Dropdown["45"].MouseLeave:Connect(function()
					Dropdown.Hover = false

					if not Dropdown.MouseDown then
						Library:Tween(Dropdown["47"], {Color = Color3.fromRGB(82, 82, 82)})
					end
				end)

				uis.InputBegan:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 and Dropdown.Hover then
						Dropdown.MouseDown = true
						Library:Tween(Dropdown["45"], {BackgroundColor3 = Color3.fromRGB(57, 57, 57)})
						Library:Tween(Dropdown["47"], {Color = Color3.fromRGB(200, 200, 200)})

						if not Dropdown.HoveringItem then
							Dropdown:Toggle()
						end
					end
				end)

				uis.InputEnded:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						Dropdown.MouseDown = false

						if Dropdown.Hover then
							Library:Tween(Dropdown["45"], {BackgroundColor3 = Color3.fromRGB(27, 27, 27)})
							Library:Tween(Dropdown["47"], {Color = Color3.fromRGB(102, 102, 102)})
						else
							Library:Tween(Dropdown["45"], {BackgroundColor3 = Color3.fromRGB(27, 27, 27)})
							Library:Tween(Dropdown["47"], {Color = Color3.fromRGB(82, 82, 82)})
						end
					end
				end)
			end


			return Dropdown
		end
		
		
		
		
		
		
		return Tab
	end
	
	return GUI
end

return Library
