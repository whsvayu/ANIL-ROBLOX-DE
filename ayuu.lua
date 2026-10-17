-- This file was generated at discord.gg/syncrypt

local v1 = unpack or table.unpack
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local MarketplaceService = game:GetService("MarketplaceService")
local TeleportService = game:GetService("TeleportService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local s1 = "PC"
local TouchEnabled = UserInputService.TouchEnabled
if TouchEnabled then
    TouchEnabled = not UserInputService.KeyboardEnabled
end
if TouchEnabled then
    s1 = "Mobile"
elseif UserInputService.GamepadEnabled then
    s1 = "Console"
end
local s2 = "Unknown"
if identifyexecutor then
    s2 = identifyexecutor()
elseif syn then
    s2 = "Synapse X"
elseif KRNL_LOADED then
    s2 = "Krnl"
elseif fluxus then
    s2 = "Fluxus"
elseif is_sirhurt_closure then
    s2 = "SirHurt"
elseif OXYGEN then
    s2 = "Oxygen U"
elseif Delta then
    s2 = "Delta"
elseif Codex then
    s2 = "Codex"
end
pcall(function()
    local ProductInfo = MarketplaceService:GetProductInfo(game.PlaceId)

    if ProductInfo and ProductInfo.Name then
        local _ = ProductInfo.Name
    end
end)

local v21 = loadstring(game:HttpGet("https://raw.githubusercontent.com/XZuuyaX/xzuyaxserver/main/xan.lua"))()
function CreateMainWindow()
    v21.Sideloader({
		Steps = {
			"Checking executor...",
			"Loading modules...",
			"Initializing UI...",
			"Fetching game data...",
			"Script Loaded!"
		},
		StepDelay = 0.1,
		OnComplete = function()
        local t2 = {}
        local New2 = v21.New
        local uDim2_2 = UDim2.new(0, 600, 0, 450)

        t2.value1 = New2({
				Title = "XZuyaX's HUB",
				Subtitle = "Premium Script Hub",
				Theme = "Midnight",
				Size = uDim2_2,
				Logo = "rbxassetid://86136928465509",
				ShowLogo = true,
				Layout = "Traditional",
				ShowUserInfo = true,
				ShowActiveList = false,
				ConfigName = "XZuyaX_Hub_Config"
			})
        t2.value1:SetButtonStyle("macOS")

        if s1 == "Mobile" then
            local MobileToggle = v21.MobileToggle
            local value1 = t2.value1
            local uDim2_3 = UDim2.new(0, 500, 0, 0)

            MobileToggle({
					Window = value1,
					Position = uDim2_3,
					Icon = "rbxassetid://86136928465509",
					Size = 50
				})
        end

        local v76 = t2.value1:AddTab("Information", v21.Icons.Info)
        local v77 = t2.value1:AddTab("Main", v21.Icons.Home)
        local v78 = t2.value1:AddTab("Ball Hack", v21.Icons.Ball)
        local v79 = t2.value1:AddTab("Misc", v21.Icons.Misc)
        local v80 = t2.value1:AddTab("Player", v21.Icons.Player)
        local v81 = t2.value1:AddTab("Visual", v21.Icons.ESP)
        local v82 = t2.value1:AddTab("GlobalChat", v21.Icons.Chat)
        local v83 = t2.value1:AddTab("Menu Function", v21.Icons.Menu)
        local v84 = t2.value1:AddTab("Server Hop", v21.Icons.Server)
        local v85 = t2.value1:AddTab("Settings", v21.Icons.Settings)

        v76:AddSection("Information")
        v76:AddDivider()
        v76:AddLabel("Made by XZuyaX", "crown", v21.Accent())
        v76:AddLabel("Executor: " .. s2 .. " | Device: " .. s1, "cpu", v21.Text())
        v76:AddParagraph("Welcome to XZuyaX's HUB!", "Thanks for using my script!\n\nStay updated with my latest scripts and content by following me on social media!")
        v76:AddSection("Changelogs")
        v76:AddDivider()
        v76:AddParagraph("Latest Update", "•Goal Sound Added\n•Goal Effects Added\n\nJoin discord for more information!\n")
        v76:AddSection("Socials")
        v76:AddDivider()
        v76:AddButton("YouTube", function()
            setclipboard("https://youtube.com/@xzuyax-d7n")
            v21.Success("YouTube", "Link copied to clipboard!")
        end)
        v76:AddButton("TikTok", function()
            setclipboard("https://www.tiktok.com/@zuyaxrawr?_t=ZS-8vaZDjWUU1R&_r=1")
            v21.Success("TikTok", "Link copied to clipboard!")
        end)
        v76:AddButton("Join Our Discord Server!", function()
            setclipboard("https://discord.gg/X4H7phPu8P")
            v21.Success("Discord", "Invite link copied to clipboard!")
        end)
        v21.Success("XZuyaX's HUB", "Loaded Successfully!")
        v77:AddSection("Team & Role Selection")
        t2.value2 = Players.LocalPlayer

        local Knit = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Knit")

        t2.value3 = Knit.Services:WaitForChild("TeamService").RE.Select
        t2.value4 = ReplicatedStorage:WaitForChild("Teams")
        t2.value5 = ReplicatedStorage.Packages.Knit.Services.BallService.RE
        t2.value6 = "Home"
        t2.value7 = "CF"
        t2.value8 = false
        t2.value9 = nil

        function t2.value10()
            local v142 = t2.value4:FindFirstChild(t2.value6 .. "Team")

            if not v142 then
                return false
            end

            local t2value7 = v142:FindFirstChild(t2.value7)

            if not t2value7 then
                return false
            end

            return t2value7.Value == t2.value2
        end

        v77:AddDropdown("Select Team", {
				Options = {
					"Home",
					"Away"
				},
				Default = "Home",
				Flag = "SelectTeamFlag"
			}, function(p9)
            t2.value6 = p9
        end)
        v77:AddDropdown("Select Position", {
				Options = {
					"CF",
					"CM",
					"RW",
					"LW",
					"GK"
				},
				Default = "CF",
				Flag = "SelectRoleFlag"
			}, function(p10)
            t2.value7 = p10
        end)
        v77:AddToggle("Auto Select Role", {
				Default = false,
				Flag = "AutoSelectFlag"
			}, function(p11)
            t2.value8 = p11

            if p11 then
                t2.value9 = RunService.RenderStepped:Connect(function()
                    local Team = t2.value2.Team

                    if Team then
                        Team = t2.value2.Team.Name
                    end

                    if Team or true then
                        t2.value3:FireServer(t2.value6, t2.value7)
                    end
                end)

                return
            end

            if t2.value9 then
                t2.value9:Disconnect()
            end
        end)
        v77:AddSection("Game Enhancers")
        t2.value11 = false
        t2.value12 = 25
        t2.value13 = 0
        task.spawn(function()
            local g153
            while true do
                repeat
                    task.wait(0.2)
                until t2.value11
                local v148
                local v149, v150, v151 = pairs(Players:GetPlayers())
                local v152
                repeat
                    v151, v152 = v149(v150, v151)

                    if not v151 then
                        g153 = true
                    end

                    if g153 then
                        break
                    end

                    local v154 = v152 ~= t2.value2

                    if v154 then
                        v154 = v152.Character

                        if v154 then
                            v154 = v152.Character:FindFirstChild("Football")
                        end
                    end
                until v154
                if not g153 then
                    v148 = v152
                end
                g153 = false
                if v148 and v148.Character then
                    local HumanoidRootPart = v148.Character:FindFirstChild("HumanoidRootPart")
                    local Character = t2.value2.Character

                    if Character then
                        Character = t2.value2.Character:FindFirstChild("HumanoidRootPart")
                    end

                    if HumanoidRootPart and Character and ((Character.Position - HumanoidRootPart.Position).Magnitude <= t2.value12 and tick() - t2.value13 >= 0) then
                        t2.value5.Slide:FireServer()
                        t2.value13 = tick()
                    end
                end
            end
        end)
        v77:AddToggle("Aura Slide V1", {
				Default = false,
				Flag = "AuraSlideFlag"
			}, function(p12)
            t2.value11 = p12
        end)
        t2.value14 = false
        t2.value15 = 25
        t2.value16 = 0
        t2.value17 = {}
        task.spawn(function()
            local g163
            while true do
                repeat
                    task.wait()
                until t2.value14
                local u158
                local v159, v160, v161 = pairs(Players:GetPlayers())
                local v162
                repeat
                    v161, v162 = v159(v160, v161)

                    if not v161 then
                        g163 = true
                    end

                    if g163 then
                        break
                    end

                    local v164 = v162 ~= t2.value2

                    if v164 then
                        v164 = v162.Character

                        if v164 then
                            v164 = v162.Character:FindFirstChild("Football")
                        end
                    end
                until v164
                if not g163 then
                    u158 = v162
                end
                g163 = false
                local v165 = u158
                if v165 then
                    v165 = u158.Character
                end
                if v165 then
                    local HumanoidRootPart = u158.Character:FindFirstChild("HumanoidRootPart")
                    local Character = t2.value2.Character

                    if Character then
                        Character = t2.value2.Character:FindFirstChild("HumanoidRootPart")
                    end

                    if HumanoidRootPart and Character then
                        local Magnitude = (Character.Position - HumanoidRootPart.Position).Magnitude
                        local Name = game.Workspace:FindFirstChild(u158.Name)

                        if Name then
                            local Values = Name:FindFirstChild("Values")

                            if Values then
                                Values = Name.Values:FindFirstChild("Dribbling")
                            end

                            Name = Values
                        end

                        if Name then
                            local v171 = t2.value17[u158.Name]
                            local NameValue = Name.Value
                            local v173 = v171 == true

                            if v173 then
                                v173 = NameValue == false

                                if v173 then
                                    v173 = Magnitude <= t2.value15 and tick() - t2.value16 >= 0
                                end
                            end

                            if v173 then
                                task.delay(0, function()
                                    local Character2 = u158.Character

                                    if Character2 then
                                        Character2 = u158.Character:FindFirstChild("Football")
                                    end

                                    if Character2 then
                                        t2.value5.Slide:FireServer()
                                        t2.value16 = tick()
                                    end
                                end)
                            end

                            t2.value17[u158.Name] = NameValue
                        end
                    end
                end
            end
        end)
        v77:AddToggle("Aura Slide V2", {
				Default = false,
				Flag = "AuraSlideV2Flag"
			}, function(p13)
            t2.value14 = p13
        end)
        v77:AddButton("Teleport Ball", function()
            local Football
            local v176, v177, v178 = pairs(Players:GetPlayers())
            local g180
            local v179
            repeat
                v178, v179 = v176(v177, v178)

                if not v178 then
                    g180 = true
                end

                if g180 then
                    break
                end

                local Character = v179.Character

                if Character then
                    Character = v179.Character:FindFirstChild("Football")
                end
            until Character
            if not g180 then
                Football = v179.Character.Football
            end
            if not Football then
                Football = game.Workspace:FindFirstChild("Football")
            end
            local Character = t2.value2.Character
            if Character then
                Character = t2.value2.Character:FindFirstChild("HumanoidRootPart")
            end
            if Football and Character then
                Football.CFrame = CFrame.new(Character.Position + Character.CFrame.LookVector * 5)
                v21.Success("Teleport Ball", "Ball teleported in front of you!")

                return
            end
            v21.Error("Teleport Ball", "Ball not found!")
        end)
        t2.value18 = false
        t2.value19 = {
				Away = 0,
				Home = 0
			}
        t2.value20 = false
        t2.value21 = nil

        local function v87(p14)
            if p14 then
                t2.value21 = RunService.Stepped:Connect(function()
                    if t2.value2.Character then
                        for _, descendant in pairs(t2.value2.Character:GetDescendants()) do
                            if descendant:IsA("BasePart") then
                                descendant.CanCollide = false
                            end
                        end
                    end
                end)

                return
            end

            if t2.value21 then
                t2.value21:Disconnect()
                t2.value21 = nil

                if t2.value2.Character then
                    for _, descendant in pairs(t2.value2.Character:GetDescendants()) do
                        if descendant:IsA("BasePart") then
                            descendant.CanCollide = true
                        end
                    end
                end
            end
        end
        local function v88()
            if t2.value2.Character then
                t2.value2.Character:FindFirstChild("HumanoidRootPart")
            end

            repeat
                task.wait()

                local Character = t2.value2.Character

                if Character then
                    Character = t2.value2.Character:FindFirstChild("HumanoidRootPart")
                end
            until Character

            return t2.value2.Character, t2.value2.Character.HumanoidRootPart
        end

        function t2.value22()
            local Team = t2.value2.Team

            if Team then
                Team = t2.value2.Team.Name
            end

            local v189 = (Team or "Unknown") == "Home"

            if v189 then
                v189 = CFrame.new(-242.376602, 10.8505239, -49.222084)
            end

            if not v189 then
                v189 = CFrame.new(319.823425, 10.8505239, -49.222084)
            end

            return v189
        end

        local function v89()
            for _, player in pairs(Players:GetPlayers()) do
                local Character = player.Character

                if Character then
                    Character = player.Character:FindFirstChild("Football")
                end

                if Character then
                    return player.Character.Football, player
                end
            end

            return game.Workspace:FindFirstChild("Football"), nil
        end
        local function v90()
            local v193 = t2.value22().Position + Vector3.new(0, 1.2, 0)

            for _ = 1, 3 do
                t2.value5.Shoot:FireServer(110, nil, Vector3.zero)
                task.wait(0.05)
            end

            for _ = 1, 5 do
                local v196 = v89()

                if v196 then
                    v196.CFrame = CFrame.new(v193)
                end

                task.wait(0.05)
            end
        end

        v77:AddToggle("Auto Goal", {
				Default = false,
				Flag = "AutoGoalFlag"
			}, function(p15)
            t2.value18 = p15

            if p15 then
                v87(false)
                t2.value19.Away = ReplicatedStorage:WaitForChild("Goals").Away.Value
                t2.value19.Home = ReplicatedStorage:WaitForChild("Goals").Home.Value
                task.spawn(function()
                    while t2.value18 do
                        local v430, v431 = v88()
                        local v432, v433 = v89()
                        local Goals = ReplicatedStorage.Goals
                        local v435 = Goals.Away.Value ~= t2.value19.Away

                        if not v435 then
                            v435 = Goals.Home.Value ~= t2.value19.Home
                        end

                        if v435 then
                            t2.value20 = true
                            t2.value19.Away = Goals.Away.Value
                            t2.value19.Home = Goals.Home.Value
                            task.delay(9, function()
                                t2.value20 = false
                            end)
                        end

                        if v432 then
                            if v432:IsDescendantOf(v430) then
                                v90()
                            end

                            local Char = v432:FindFirstChild("Char")
                            local v437 = false

                            if v432.Parent == game.Workspace then
                                if not Char or v430 ~= Char.Value then
                                    v437 = true
                                elseif v430 == Char.Value and not t2.value20 then
                                    v437 = true
                                end
                            else
                                local v438 = v433

                                if v433 then
                                    v438 = v433.Team ~= t2.value2.Team
                                end

                                if v438 then
                                    local Character = v433.Character

                                    if Character then
                                        Character = v433.Character:FindFirstChild("HumanoidRootPart")
                                    end

                                    if Character and not t2.value20 then
                                        v431.CFrame = CFrame.new(Character.Position + Vector3.new(0, 0.8, 0))
                                        t2.value5.Slide:FireServer(v433)
                                    end
                                end
                            end

                            if v437 then
                                v437 = not t2.value20 and not v432:IsDescendantOf(v430)
                            end

                            if v437 then
                                v431.CFrame = CFrame.new(v432.Position + Vector3.new(0, 1.2, 0))
                            end
                        end

                        task.wait(0.1)
                    end
                end)

                return
            end

            if t2.value21 then
                t2.value21:Disconnect()
            end

            v87(false)
        end)
        t2.value23 = false
        t2.value24 = nil
        t2.value25 = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("AwakeningService"):WaitForChild("RE"):WaitForChild("StartAwakening")
        v77:AddToggle("Auto Awakening", {
				Default = false,
				Flag = "AutoAwakening"
			}, function(p16)
            t2.value23 = p16

            if t2.value24 then
                t2.value24:Disconnect()
            end

            if p16 then
                v21.Success("Auto Awakening", "ON")

                local AwakeningBar = t2.value2:WaitForChild("PlayerStats"):WaitForChild("AwakeningBar")

                RunService.RenderStepped:Connect(function()
                    local value23 = t2.value23

                    if value23 then
                        value23 = AwakeningBar.Value >= 100
                    end

                    if value23 then
                        pcall(function()
                            t2.value25:FireServer()
                        end)
                    end
                end)

                return
            end

            v21.Warning("Auto Awakening", "OFF")
        end)
        t2.value26 = false
        t2.value27 = 100
        t2.value28 = nil
        t2.value29 = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("FlowService"):WaitForChild("RE"):WaitForChild("Activate")
        v77:AddSlider("Flow Start Bar", {
				Min = 30,
				Max = 100,
				Default = 100,
				Increment = 5,
				Flag = "FlowStartBar"
			}, function(p17)
            t2.value27 = p17
        end)
        v77:AddToggle("Auto Flow", {
				Default = false,
				Flag = "AutoFlow"
			}, function(p18)
            t2.value26 = p18

            if t2.value28 then
                t2.value28:Disconnect()
            end

            if p18 then
                v21.Success("Auto Flow", "ON")

                local FlowBar = t2.value2:WaitForChild("PlayerStats"):WaitForChild("FlowBar")

                if FlowBar.Value >= t2.value27 then
                    pcall(function()
                        t2.value29:FireServer()
                    end)
                end

                FlowBar:GetPropertyChangedSignal("Value"):Connect(function()
                    local value26 = t2.value26

                    if value26 then
                        value26 = FlowBar.Value >= t2.value27
                    end

                    if value26 then
                        pcall(function()
                            t2.value29:FireServer()
                        end)
                    end
                end)

                return
            end

            v21.Warning("Auto Flow", "OFF")
        end)
        v77:AddToggle("Infinite Stamina", {
				Default = false,
				Flag = "InfiniteStaminaFlag"
			}, function(p19)
            if p19 then
                task.spawn(function()
                    while true do
                        local v442 = p19

                        if v442 then
                            v442 = task.wait()
                        end

                        if not v442 then
                            break
                        end

                        local PlayerStats = t2.value2:FindFirstChild("PlayerStats")
                        local v444 = PlayerStats

                        if PlayerStats then
                            v444 = PlayerStats:FindFirstChild("Stamina")
                        end

                        if v444 then
                            PlayerStats.Stamina.Value = 1e999
                        end
                    end
                end)
                v21.Success("Infinite Stamina", "Activated!")

                return
            end

            v21.Warning("Infinite Stamina", "Deactivated!")
        end)
        t2.value30 = {
				on = false,
				cd = 0.2,
				last = 0,
				conn = nil,
				hadBall = false
			}

        local function v91()
            for _, player in pairs(Players:GetPlayers()) do
                local v206 = player ~= t2.value2

                if v206 then
                    v206 = player.Character

                    if v206 then
                        v206 = player.Character:FindFirstChild("Football")
                    end
                end

                if v206 and player.Team ~= t2.value2.Team then
                    t2.value30.hadBall = true

                    return player.Character.Football, player
                end
            end

            return nil, nil
        end

        function t2.value31(p20, p21)
            local v209 = not p20

            if not v209 then
                v209 = not t2.value2.Character
            end

            if v209 then
                return
            end

            local HumanoidRootPart = t2.value2.Character:FindFirstChild("HumanoidRootPart")

            if not HumanoidRootPart then
                return
            end

            HumanoidRootPart.CFrame = CFrame.new(p20.Position + Vector3.new(0, 1.2, 0))

            if p21 then
                t2.value5.Slide:FireServer(p21)
            end
        end

        v77:AddToggle("Auto Steal", {
				Default = false,
				Flag = "AutoStealFlag"
			}, function(p22)
            t2.value30.on = p22

            if t2.value30.conn then
                t2.value30.conn:Disconnect()
                t2.value30.conn = nil
            end

            if not p22 then
                v21.Warning("Auto Steal", "Deactivated!")

                return
            end

            v21.Success("Auto Steal", "Activated!")
            t2.value30.conn = RunService.Heartbeat:Connect(function()
                if not t2.value30.on then
                    return
                end

                local timestamp = tick()

                if timestamp - t2.value30.last < t2.value30.cd then
                    return
                end

                local v446, v447 = v91()

                if v446 and v447 then
                    t2.value31(v446, v447)
                    t2.value30.last = timestamp

                    return
                end

                if t2.value30.hadBall then
                    local Football = game.Workspace:FindFirstChild("Football")

                    if Football then
                        t2.value31(Football, nil)
                        t2.value30.last = timestamp
                        t2.value30.hadBall = false
                    end
                end
            end)
        end)
        v77:AddSection("Only Works on some Flows")
        v77:AddToggle("Get Flow Buff | Inf Flow", {
				Default = false,
				Flag = "ToggleFlowFlag"
			}, function(p23)
            local PlayerStats = t2.value2:FindFirstChild("PlayerStats")
            local v214 = PlayerStats

            if PlayerStats then
                v214 = PlayerStats:FindFirstChild("InFlow")
            end

            if v214 then
                PlayerStats.InFlow.Value = p23
                v21.Success("Flow Buff", not ("Flow Buff " .. p23) and "deactivated!" or "activated!")

                return
            end

            v21.Error("Flow Buff", "PlayerStats not found!")
        end)

        local ok, result = pcall(function()
            return require(ReplicatedStorage.Shared.Flows)
        end)
        local v94 = not ok

        if not v94 then
            v94 = not result
        end

        if v94 then
            v21.Error("Flow Changer", "Failed to load Flows data.")

            return
        end

        local t3 = {}
        local t4 = {}

        for k in pairs(result) do
            table.insert(t4, k)
        end

        table.sort(t4)
        v77:AddDropdown("FLOW CHANGER", {
				Options = t4,
				Default = "Default",
				Flag = "FlowChangerFlag"
			}, function(p24)
            local PlayerStats = t2.value2:FindFirstChild("PlayerStats")

            if PlayerStats then
                PlayerStats.Flow.Value = p24
                v21.Success("Flow Changer", "Flow changed to: " .. p24)

                return
            end

            v21.Error("Flow Changer", "PlayerStats not found!")
        end)
        v77:AddSection("Dribble Controls")
        t3.value1 = false
        v77:AddToggle("Auto Dribble", {
				Default = false,
				Flag = "AutoDribbleToggle"
			}, function(p25)
            if p25 then
                if not t3.value1 then
                    loadstring(game:HttpGet("https://loaderxzuyax.vercel.app/adbr z", true))()
                end

                getgenv().AutoDribbleSettings.Enabled = true
                v21.Success("Auto Dribble", "Activated!")

                return
            end

            getgenv().AutoDribbleSettings.Enabled = false
            v21.Warning("Auto Dribble", "Deactivated!")
        end)
        v77:AddInput("Dribble Range", {
				Default = "22",
				Placeholder = "Enter Dribble Range",
				Flag = "DribbleRangeInput"
			}, function(p26)
            getgenv().AutoDribbleSettings.range = tonumber(p26) or 22
            v21.Success("Dribble Range", "Range changed to: " .. getgenv().AutoDribbleSettings.range)
        end)
        v77:AddSection("Power Settings | Mobile")
        t3.value2 = 180
        t3.value3 = false
        t3.value4 = nil
        t3.value5 = t2.value2.PlayerGui.Mobile.Ball.Shoot
        v77:AddSlider("Power | Mobile", {
				Min = 0,
				Max = 1000,
				Default = 180,
				Flag = "MobilePowerSlider"
			}, function(p27)
            t3.value2 = p27
        end)
        v77:AddToggle("Add Power | Mobile", {
				Default = false,
				Flag = "MobilePowerToggle"
			}, function(p28)
            t3.value3 = p28

            if t3.value4 then
                t3.value4:Disconnect()
            end

            if t3.value3 then
                t3.value5.MouseButton1Click:Connect(function()
                    t2.value5.Shoot:FireServer(t3.value2, nil, Vector3.new(1, 0, 0))
                end)
            end
        end)
        v77:AddSection("Power Settings | PC")
        t3.value6 = 180
        t3.value7 = false
        t3.value8 = nil
        t3.value9 = Enum.KeyCode.E
        v77:AddSlider("Power | PC", {
				Min = 0,
				Max = 1000,
				Default = 180,
				Flag = "PCPowerSlider"
			}, function(p29)
            t3.value6 = p29
        end)
        v77:AddInput("Keybind | PC", {
				PlaceholderText = "Enter key (ex: E, Q, R)",
				Flag = "PCKeybindInput"
			}, function(p30)
            local ok2, result2 = pcall(function()
                return Enum.KeyCode[p30:upper()]
            end)

            if ok2 and result2 then
                t3.value9 = result2

                return
            end

            warn("Invalid key:", p30)
        end)
        v77:AddToggle("Add Power | PC", {
				Default = false,
				Flag = "PCToggleShoot"
			}, function(p31)
            t3.value7 = p31

            if t3.value8 then
                t3.value8:Disconnect()
            end

            if t3.value7 then
                UserInputService.InputBegan:Connect(function(input, gameProcessed)
                    if not gameProcessed and input.KeyCode == t3.value9 then
                        t2.value5.Shoot:FireServer(t3.value6, nil, Vector3.new(1, 0, 0))
                    end
                end)
            end
        end)
        v78:AddSection("Ball Hacks")
        t3.value10 = nil
        t3.value11 = false
        t3.value12 = 2.5
        t3.value13 = 1

        local function v98()
            local value10 = t3.value10

            if value10 then
                value10 = t3.value10.Parent

                if value10 then
                    value10 = t3.value10:IsDescendantOf(game.Workspace)
                end
            end

            if value10 then
                return t3.value10
            end

            for _, descendant in pairs(game.Workspace:GetDescendants()) do
                local v229 = descendant:IsA("Part")

                if v229 then
                    v229 = descendant.Name == "Hitbox"

                    if v229 then
                        v229 = descendant.Parent

                        if v229 then
                            v229 = descendant.Parent.Name == "Football"
                        end
                    end
                end

                if v229 then
                    t3.value10 = descendant

                    return t3.value10
                end
            end

            for _, player in pairs(Players:GetPlayers()) do
                local Character = player.Character

                if not (Character and Character:FindFirstChild("Football")) then
                    continue
                end

                local Hitbox = Character.Football:FindFirstChild("Hitbox")

                if Hitbox and Hitbox:IsA("Part") then
                    t3.value10 = Hitbox

                    return Hitbox
                end
            end

            return nil
        end
        local function v99()
            local v234 = v98()

            if v234 then
                v234.Size = Vector3.new(t3.value12, t3.value12, t3.value12)
                v234.Transparency = not t3.value11 and 0.5 or 0.8

                local value11 = t3.value11

                if value11 then
                    value11 = Enum.Material.Neon
                end

                if not value11 then
                    value11 = Enum.Material.ForceField
                end

                v234.Material = value11
            end
        end

        v78:AddSlider("Ball Expander", {
				Min = 1,
				Max = 25,
				Default = 2.5,
				Increment = 0.1,
				Flag = "ball_expander"
			}, function(p32)
            t3.value12 = p32
            v99()
        end)
        task.spawn(function()
            while true do
                task.wait(t3.value13)

                local value10 = t3.value10

                if value10 then
                    value10 = t3.value10.Parent
                end

                if not value10 then
                    v99()
                end
            end
        end)
        task.spawn(function()
            local n1 = 0

            while true do
                task.wait(1)

                if not v98() and tick() - n1 > 10 then
                    v21.Warning("Hitbox Missing", "Ball hitbox not found. Searching again...")
                    n1 = tick()
                end
            end
        end)
        v78:AddButton("Control Ball", function()
            loadstring(game:HttpGet("https://loaderxzuyax.vercel.app/cbal"))()
            v21.Success("Control Ball", "Script loaded successfully!")
        end)
        v78:AddButton("Delete Control Ball GUI", function()
            local ScreenGui = t2.value2.PlayerGui:FindFirstChild("ScreenGui")

            if ScreenGui then
                ScreenGui:Destroy()
                v21.Success("GUI Deleted", "Control Ball GUI has been removed.")

                return
            end

            v21.Warning("GUI Not Found", "Control Ball GUI not found.")
        end)
        v78:AddButton("SnakeShoot", function()
            loadstring(game:HttpGet("https://loaderxzuyax.vercel.app/Sksh"))()
            v21.Success("SnakeShoot", "Script loaded successfully!")
        end)
        v78:AddButton("CenterOfGravity (Rin Only)", function()
            local Value = t2.value2:WaitForChild("PlayerStats"):WaitForChild("Style").Value

            if Value == "Rin" or Value == "NEL Rin" then
                v21.Warning("Feature is Under Maintenance")

                return
            end

            v21.Warning("Access Denied", "You need Rin/NEL Rin to use this!")
        end)
        v79:AddSection("Run the Auto Goalkeeper | Not 100% Accurate, but still good i think")
        v79:AddButton("Auto GK", function()
            loadstring(game:HttpGet("https://loaderxzuyax.vercel.app/Kiper", true))()
            v21.Success("Auto GK", "Script loaded successfully!")
        end)
        v79:AddSection("To fix bug when you use Auto GK")
        v79:AddButton("Fix Bug Character", function()
            local t2value2Name = game.Workspace:FindFirstChild(t2.value2.Name)

            if t2value2Name then
                t2value2Name = t2value2Name:FindFirstChild("IsRagdoll")
            end

            if t2value2Name then
                t2value2Name.Value = true
                t2value2Name.Value = false
                v21.Success("Bug Fixed", "Character bug fixed successfully!")

                return
            end

            v21.Error("Error", "IsRagdoll not found!")
        end)
        t3.value14 = false
        v79:AddToggle("GK Assist", {
				Default = false,
				Flag = "GKAssistFlag"
			}, function(p33)
            t3.value14 = p33

            if p33 then
                task.spawn(function()
                    while t3.value14 do
                        pcall(function()
                            t2.value5.Dive:FireServer()
                        end)
                        task.wait(0.1)
                    end
                end)
            end
        end)
        t3.value15 = false
        v79:AddToggle("No Cooldown", {
				Default = false,
				Flag = "NoCooldownToggle"
			}, function(p34)
            if not t3.value15 then
                loadstring(game:HttpGet("https://loaderxzuyax.vercel.app/tanpahitunganmundur"))()
            end

            if p34 then
                _G.EnableNoCooldown()
                v21.Success("No Cooldown", "Enabled")

                return
            end

            _G.DisableNoCooldown()
            v21.Warning("No Cooldown", "Disabled")
        end)
        v79:AddButton("No CD V2 | Try this if v1 doesn't work", function()
            local AbilityController = require(ReplicatedStorage.Controllers.AbilityController)

            task.spawn(function()
                while true do
                    local v451 = AbilityController
                    local v452 = AbilityController
                    local v453 = AbilityController
                    local v454 = AbilityController

                    v451.AbilityUsed = 0
                    v452.AbilityOne = 0
                    v453.AbilityTwo = 0
                    v454.AbilityThree = 0

                    local Character = t2.value2.Character

                    if Character then
                        pcall(function()
                            Character:SetAttribute("LastV", 0)
                        end)
                    end

                    task.wait()
                end
            end)
        end)
        t3.value16 = {
				on = false,
				conn = nil
			}
        v79:AddToggle("Kickoff Bypass", {
				Default = false,
				Flag = "KickoffBypassFlag"
			}, function(p35)
            t3.value16.on = p35

            if p35 then
                pcall(function()
                    game.Workspace:SetAttribute("KickoffAbilityBlocked", false)
                end)
                t3.value16.conn = game.Workspace.AttributeChanged:Connect(function(attribute)
                    if t3.value16.on and attribute == "KickoffAbilityBlocked" then
                        pcall(function()
                            game.Workspace:SetAttribute("KickoffAbilityBlocked", false)
                        end)
                    end
                end)
                v21.Success("Kickoff Bypass", "Bypass ON")

                return
            end

            if t3.value16.conn then
                t3.value16.conn:Disconnect()
                t3.value16.conn = nil
            end

            v21.Warning("Kickoff Bypass", "Bypass OFF")
        end)
        v80:AddSection("FE COSMETICS")

        local Cosmetics = require(ReplicatedStorage.Shared.Inventory.Cosmetics)
        local t5 = {}

        for k in pairs(Cosmetics) do
            table.insert(t5, k)
        end

        table.sort(t5)

        local v103 = t5[1]

        v80:AddDropdown("Select Cosmetic", {
				Options = t5,
				Default = v103,
				Flag = "CosmeticDropdown"
			}, function(p36)
            ReplicatedStorage.Packages.Knit.Services.CustomizationService.RE.Customize:FireServer("Cosmetics", p36, "1")
            v21.Banner("Success!", "Equipped: " .. p36)
        end)
        t3.value17 = false
        t3.value18 = 0.1
        t3.value19 = nil
        v80:AddSlider("SpeedHack Speed", {
				Min = 0,
				Max = 1,
				Default = 0.1,
				Suffix = "x",
				Increment = 0.1,
				Flag = "SpeedHackSpeedFlag"
			}, function(p37)
            t3.value18 = p37
        end)
        v80:AddToggle("SpeedHack", {
				Default = false,
				Flag = "SpeedHackFlag"
			}, function(p38)
            t3.value17 = p38

            if t3.value19 then
                t3.value19:Disconnect()
            end

            if t3.value17 then
                RunService.Heartbeat:Connect(function()
                    local Character = t2.value2.Character
                    local v458 = Character

                    if Character then
                        v458 = Character:FindFirstChildWhichIsA("Humanoid")
                    end

                    local v459 = Character

                    if Character then
                        v459 = v458

                        if v458 then
                            v459 = v458.Parent

                            if v459 then
                                v459 = v458.MoveDirection.Magnitude > 0
                            end
                        end
                    end

                    if v459 then
                        Character:TranslateBy(v458.MoveDirection * t3.value18)
                    end
                end)
            end
        end)
        t3.value20 = false
        t3.value21 = nil
        v80:AddToggle("Anti Ragdoll", {
				Default = false,
				Flag = "AntiRagdollFlag"
			}, function(p39)
            t3.value20 = p39

            if t3.value21 then
                t3.value21:Disconnect()
            end

            if t3.value20 then
                RunService.Heartbeat:Connect(function()
                    local Character = t2.value2.Character

                    if not Character then
                        Character = t2.value2.CharacterAdded:Wait()
                    end

                    local Humanoid = Character:FindFirstChildOfClass("Humanoid")

                    if Humanoid then
                        Humanoid.StateChanged:Connect(function(_, newState)
                            if newState == Enum.HumanoidStateType.Ragdoll then
                                Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                            end
                        end)

                        local IsRagdoll = Character:FindFirstChild("IsRagdoll")

                        if IsRagdoll and IsRagdoll.Value then
                            IsRagdoll.Value = false
                        end
                    end
                end)
            end
        end)
        t3.value22 = false
        t3.value23 = 1
        t3.value24 = nil
        t3.value25 = nil
        t3.value26 = nil
        t3.value27 = nil

        function t3.value28()
            if t3.value22 then
                return
            end

            t3.value22 = true

            local Character = t2.value2.Character

            if not Character then
                Character = t2.value2.CharacterAdded:Wait()
            end

            local Humanoid = Character:WaitForChild("Humanoid")
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

            t3.value27 = require(t2.value2.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
            t3.value24 = Instance.new("BodyVelocity")
            t3.value24.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
            t3.value24.Velocity = Vector3.zero
            t3.value24.Parent = HumanoidRootPart
            t3.value25 = Instance.new("BodyGyro")
            t3.value25.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
            t3.value25.P = 90000
            t3.value25.CFrame = HumanoidRootPart.CFrame
            t3.value25.Parent = HumanoidRootPart
            Humanoid.PlatformStand = true
            t3.value26 = RunService.RenderStepped:Connect(function()
                local v463 = not t3.value22

                if not v463 then
                    v463 = not HumanoidRootPart or not Humanoid
                end

                if v463 then
                    return
                end

                local CurrentCamera = game.Workspace.CurrentCamera
                local MoveVector = t3.value27:GetMoveVector()

                t3.value24.Velocity = (-CurrentCamera.CFrame.LookVector * MoveVector.Z + CurrentCamera.CFrame.RightVector * MoveVector.X) * (t3.value23 * 50)
                t3.value25.CFrame = CurrentCamera.CFrame
            end)
        end

        local function v104()
            t3.value22 = false

            if t3.value26 then
                t3.value26:Disconnect()
            end

            if t3.value24 then
                t3.value24:Destroy()
            end

            if t3.value25 then
                t3.value25:Destroy()
            end

            local Character = t2.value2.Character

            if Character then
                local Humanoid = Character:FindFirstChildOfClass("Humanoid")

                if Humanoid then
                    Humanoid.PlatformStand = false
                end
            end
        end

        v80:AddToggle("Fly", {
				Default = false,
				Flag = "FlyToggleFlag",
				Callback = function(p41)
            if p41 then
                t3.value28()

                return
            end

            v104()
        end
			})
        t2.value2.CharacterAdded:Connect(function()
            task.wait(0.5)

            if t3.value22 then
                v104()
                t3.value28()
            end
        end)
        t3.value29 = nil
        t3.value30 = {}

        local Character = t2.value2.Character

        if not Character then
            Character = t2.value2.CharacterAdded:Wait()
        end

        t3.value31 = Character

        local function v106(p42)
            table.clear(t3.value30)

            local GetDescendants = p42.GetDescendants

            for _, v in pairs(GetDescendants(p42)) do
                if v:IsA("BasePart") then
                    t3.value30[v] = v.CanCollide
                end
            end
        end

        v106(t3.value31)
        t2.value2.CharacterAdded:Connect(function(character)
            t3.value31 = character
            task.wait(0.1)
            v106(character)
        end)
        v80:AddToggle("Noclip", {
				Default = false,
				Flag = "NoclipToggleFlag",
				Callback = function(p43)
            if t3.value29 then
                t3.value29:Disconnect()
            end

            if p43 then
                v106(t3.value31)
                RunService.Stepped:Connect(function()
                    for k in pairs(t3.value30) do
                        local v467 = k

                        if v467 and v467.Parent then
                            v467.CanCollide = false
                        end
                    end
                end)

                return
            end

            for k, v in pairs(t3.value30) do
                local v264 = k

                if v264 and v264.Parent then
                    v264.CanCollide = v
                end
            end
        end
			})
        t3.value32 = false
        t3.value33 = false
        t3.value34 = 200
        t3.value35 = {}
        t3.value36 = {}
        t3.value37 = {}
        t3.value38 = {}
        t3.value39 = {}

        local function v107()
            local BillboardGui = Instance.new("BillboardGui")

            BillboardGui.Name = "StyleESP"
            BillboardGui.Size = UDim2.new(0, 100, 0, 30)
            BillboardGui.AlwaysOnTop = true
            BillboardGui.ExtentsOffset = Vector3.new(0, 3.5, 0)
            BillboardGui.Active = false
            BillboardGui.LightInfluence = 0
            BillboardGui.MaxDistance = t3.value34

            local TextLabel = Instance.new("TextLabel", BillboardGui)

            TextLabel.Name = "Label"
            TextLabel.Size = UDim2.new(1, 0, 1, 0)
            TextLabel.BackgroundTransparency = 1
            TextLabel.Font = Enum.Font.GothamBlack
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextStrokeTransparency = 0
            TextLabel.TextScaled = false
            TextLabel.TextSize = 13
            TextLabel.ZIndex = 1000
            TextLabel.Text = "Loading..."

            local UIStroke = Instance.new("UIStroke", TextLabel)

            UIStroke.Thickness = 2
            UIStroke.Color = Color3.fromRGB(0, 0, 0)
            UIStroke.Transparency = 0

            local UIGradient = Instance.new("UIGradient", TextLabel)

            UIGradient.Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(180, 0, 255)),
					ColorSequenceKeypoint.new(0.5, Color3.fromRGB(90, 0, 140)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
				})
            UIGradient.Rotation = 90

            return BillboardGui
        end

        t3.value40 = nil

        function t3.value41(p44)
            local _pairs = pairs
            local value37 = t3.value37
            local value38 = t3.value38
            for v275, v276 in _pairs({
					t3.value36,
					value37,
					value38,
					t3.value39
				}) do

                local v277 = v276

                if v277[p44] then
                    pcall(function()
                        v277[p44]:Disconnect()
                    end)
                    v277[p44] = nil
                end
            end
            if t3.value35[p44] then
                pcall(function()
                    t3.value35[p44]:Destroy()
                end)
                t3.value35[p44] = nil
            end
        end

        local function v108(p45)
            if not p45 or not p45:FindFirstChild("Head") then
                return false
            end

            local Character3 = t2.value2.Character
            local v280 = not Character3

            if not v280 then
                v280 = not Character3:FindFirstChild("Head")
            end

            if v280 then
                return false
            end

            return (p45.Head.Position - Character3.Head.Position).Magnitude <= t3.value34
        end

        function t3.value42(p46)
            local value32 = t3.value32

            if value32 then
                value32 = p46.Team == t2.value2.Team
            end

            if not value32 then
                value32 = t3.value33

                if value32 then
                    value32 = p46.Team ~= t2.value2.Team
                end
            end

            return value32
        end
        function t3.value40(p47, p48)
            t3.value41(p47)

            if not p48 then
                return
            end

            local Head = p48:FindFirstChild("Head")

            if not Head then
                t3.value39[p47] = RunService.Heartbeat:Connect(function()
                    if p48:FindFirstChild("Head") then
                        t3.value39[p47]:Disconnect()
                        t3.value39[p47] = nil
                        t3.value40(p47, p48)
                    end
                end)

                return
            end

            local v291 = v107()

            v291.Adornee = Head
            t3.value35[p47] = v291

            local v292 = v21

            if v292 then
                v292 = v21.ScreenGui
            end

            if v292 then
                v291.Parent = v21.ScreenGui
            else
                local ScreenGui = Instance.new("ScreenGui")

                ScreenGui.Name = "XZuyaX_ESP"
                ScreenGui.IgnoreGuiInset = true
                ScreenGui.ResetOnSpawn = false
                ScreenGui.Parent = t2.value2:WaitForChild("PlayerGui")
                v291.Parent = ScreenGui
            end

            t3.value38[p47] = p47.ChildAdded:Connect(function(child)
                if child.Name == "PlayerStats" then
                    local v469 = p47
                    local v470 = v291
                    local PlayerStats = v469:FindFirstChild("PlayerStats")
                    local Label = v470.Label

                    if PlayerStats then
                        local Style = PlayerStats:FindFirstChild("Style")

                        if Style then
                            Style = tostring(PlayerStats.Style.Value)
                        end

                        PlayerStats = Style
                    end

                    Label.Text = PlayerStats or "No Style"
                end
            end)
            t3.value36[p47] = RunService.Heartbeat:Connect(function()
                local v474 = not t3.value32 or t3.value33

                if not v474 then
                    v474 = not p48

                    if not v474 then
                        v474 = not Head.Parent

                        if not v474 then
                            v474 = not v108(p48) or not t3.value42(p47)
                        end
                    end
                end

                if v474 then
                    v291.Enabled = false

                    return
                end

                local v475 = p47
                local v476 = v291
                local PlayerStats = v475:FindFirstChild("PlayerStats")
                local Label = v476.Label

                if PlayerStats then
                    local Style = PlayerStats:FindFirstChild("Style")

                    if Style then
                        Style = tostring(PlayerStats.Style.Value)
                    end

                    PlayerStats = Style
                end

                Label.Text = PlayerStats or "No Style"
                v291.Enabled = true
            end)
            t3.value37[p47] = p48.AncestryChanged:Connect(function(_, parent)
                if not parent then
                    t3.value41(p47)
                end
            end)
        end

        local function v109()

            for v296 in pairs(t3.value35) do

                t3.value41(v296)
            end
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= t2.value2 and player.Character then
                    t3.value40(player, player.Character)
                end
            end
        end

        Players.PlayerAdded:Connect(function(player)
            if player ~= t2.value2 then
                t3.value37[player] = player.CharacterAdded:Connect(function(character)
                    t3.value40(player, character)
                end)
            end
        end)
        Players.PlayerRemoving:Connect(t3.value41)
        task.spawn(function()
            while true do
                task.wait(30)

                if t3.value32 or t3.value33 then
                    v109()
                end
            end
        end)
        v81:AddToggle("ESP Style Team", {
				Default = false,
				Flag = "ESPStyleTeam"
			}, function(p50)
            t3.value32 = p50
            v109()

            if p50 then
                v21.Success("ESP Team", "ON")

                return
            end

            v21.Warning("ESP Team", "OFF")
        end)
        v81:AddToggle("ESP Style Enemy", {
				Default = false,
				Flag = "ESPStyleEnemy"
			}, function(p51)
            t3.value33 = p51
            v109()

            if p51 then
                v21.Success("ESP Enemy", "ON")

                return
            end

            v21.Warning("ESP Enemy", "OFF")
        end)
        v81:AddButton("Refresh ESP", function()
            if t3.value32 or t3.value33 then
                v109()
                v21.Success("ESP Refreshed", "All ESP labels have been refreshed!")

                return
            end

            v21.Warning("ESP Off", "ESP is not enabled. Turn it on first!")
        end)
        _G.Predicting = false
        loadstring(game:HttpGet("https://loaderxzuyax.vercel.app/prediksicuy"))()
        v81:AddToggle("Ball Trajectory", {
				Default = false,
				Flag = "BallTrajectToggleFlag",
				Callback = function(p52)
            _G.Predicting = p52
        end
			})
        v81:AddSection("Goal Effect Customization")
        t3.value43 = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("GoalEffects")
        t3.value44 = Knit.Services.CustomizationService.RE.Customize

        local Goals = game.Workspace:WaitForChild("Goals")

        t3.value45 = Goals:WaitForChild("Away")
        t3.value46 = Goals:WaitForChild("Home")

        local Goals2 = ReplicatedStorage:WaitForChild("Goals")
        local Home = Goals2:WaitForChild("Home")
        local Away = Goals2:WaitForChild("Away")

        t3.value47 = "Remove / None"
        t3.value48 = t3.value47
        t3.value49 = nil

        local t6 = { t3.value47 }

        for _, child in ipairs(t3.value43:GetChildren()) do
            table.insert(t6, child.Name)
        end

        RunService.RenderStepped:Connect(function()
            local Football = game.Workspace:FindFirstChild("Football")
            local v304 = Football

            if Football then
                v304 = Football:FindFirstChild("Char")
            end

            if v304 then
                local CharValue = Football.Char.Value

                if CharValue and CharValue ~= "" then
                    t3.value49 = tostring(CharValue)
                end
            end
        end)

        local function v117(p53)
            if t3.value48 == t3.value47 then
                return
            end

            local v307 = p53:IsA("BasePart") and p53

            if not v307 then
                v307 = p53.PrimaryPart

                if not v307 then
                    v307 = p53:FindFirstChildWhichIsA("BasePart")
                end
            end

            local v308 = v307

            if v308 then
                local t3value48 = ReplicatedStorage:WaitForChild("Effects"):WaitForChild("GoalEffects"):WaitForChild(t3.value48)

                pcall(function()
                    require(t3value48)({
							Pos = v308.CFrame
						})
                end)
            end
        end

        t3.value50 = Home.Value
        t3.value51 = Away.Value
        Home.Changed:Connect(function(property)
            if property > t3.value50 then
                task.delay(0.1, function()
                    local value49 = t3.value49

                    if value49 then
                        value49 = t3.value49:lower() == t2.value2.Name:lower()
                    end

                    if value49 then
                        local value46 = t3.value46

                        v117(value46)
                    end
                end)
            end

            t3.value50 = property
        end)
        Away.Changed:Connect(function(property)
            if property > t3.value51 then
                task.delay(0.1, function()
                    local value49 = t3.value49

                    if value49 then
                        value49 = t3.value49:lower() == t2.value2.Name:lower()
                    end

                    if value49 then
                        local value45 = t3.value45

                        v117(value45)
                    end
                end)
            end

            t3.value51 = property
        end)

        local AddDropdown = v81.AddDropdown
        local value47 = t3.value47

        AddDropdown(v81, "Select Goal Effect", {
				Options = t6,
				Default = value47,
				Flag = "GoalEffectSelectFlag"
			}, function(p54)
            t3.value48 = p54

            if p54 ~= t3.value47 then
                pcall(function()
                    t3.value44:FireServer("GoalEffects", "Water", nil)
                end)
                task.spawn(function()
                    local Water = t3.value43:FindFirstChild("Water")

                    if Water then
                        Water:Destroy()
                    end
                end)
            end
        end)
        v81:AddSection("Goal Sound")
        t3.value52 = ""
        t3.value53 = false
        t3.value54 = nil

        local function v120()
            local v313 = not t3.value53

            if not v313 then
                v313 = t3.value52 == ""
            end

            if v313 then
                return
            end

            if t3.value54 then
                pcall(function()
                    t3.value54:Stop()
                    t3.value54:Destroy()
                end)
                t3.value54 = nil
            end

            local v314 = t3.value52:match("%d+")

            if not v314 then
                v21.Warning("Goal Sound", "Sound ID tidak valid!")

                return
            end

            local Sound = Instance.new("Sound")

            Sound.SoundId = "rbxassetid://" .. v314
            Sound.Volume = 10
            Sound.Looped = false
            Sound.Parent = game.Workspace
            t3.value54 = Sound
            pcall(function()
                Sound:Play()
            end)
            task.delay(7, function()
                if t3.value54 == Sound then
                    pcall(function()
                        Sound:Stop()
                        Sound:Destroy()
                    end)
                    t3.value54 = nil
                end
            end)
        end

        Home.Changed:Connect(function(property)
            if property > t3.value50 then
                task.delay(0.1, function()
                    local value49 = t3.value49

                    if value49 then
                        value49 = t3.value49:lower() == t2.value2.Name:lower()
                    end

                    if value49 then
                        v120()
                    end
                end)
            end
        end)
        Away.Changed:Connect(function(property)
            if property > t3.value51 then
                task.delay(0.1, function()
                    local value49 = t3.value49

                    if value49 then
                        value49 = t3.value49:lower() == t2.value2.Name:lower()
                    end

                    if value49 then
                        v120()
                    end
                end)
            end
        end)
        v81:AddToggle("Goal Sound", {
				Default = false,
				Flag = "GoalSoundToggle"
			}, function(p55)
            t3.value53 = p55

            if p55 then
                v21.Success("Goal Sound", "ON")

                return
            end

            if t3.value54 then
                pcall(function()
                    t3.value54:Stop()
                    t3.value54:Destroy()
                end)
                t3.value54 = nil
            end

            v21.Warning("Goal Sound", "OFF")
        end)
        v81:AddInput("Sound ID", {
				Default = "",
				Placeholder = "Enter Roblox Sound ID (ex: 1234567890)",
				Flag = "GoalSoundIdInput"
			}, function(p56)
            local _tostring = tostring

            if not p56 then
                p56 = ""
            end

            local v321 = _tostring(p56):gsub("%s+", "")
            local v322 = v321:match("%d+")

            if v322 then
                t3.value52 = v322
                v21.Success("Goal Sound", "Sound ID set: " .. v322)

                return
            end

            if v321 ~= "" then
                v21.Warning("Goal Sound", "Invalid ID! Enter numbers only.")
            end
        end)
        v81:AddButton("Test Sound", function()
            if t3.value52 == "" then
                v21.Warning("Goal Sound", "No Sound ID entered yet!")

                return
            end

            v120()
            v21.Info("Goal Sound", "Testing Sound ID: " .. t3.value52)
        end)
        t3.value55 = "wss://zchatproject.xzuyaxhub.workers.dev/ws"
        t3.value56 = 50
        t3.value57 = "rbxassetid://86136928465509"
        t3.value58 = {
				[10377534073] = true
			}
        t3.value59 = {}
        t3.value60 = t2.value2.Name
        t3.value61 = false
        t3.value62 = nil
        t3.value63 = false

        local function v121(p57)
            local ok3, result3 = pcall(function()
                return HttpService:JSONEncode(p57)
            end)

            return ok3 and result3 or nil
        end
        local function v122(p58)
            local _tostring = tostring

            if not p58 then
                p58 = "Unknown"
            end

            local v335 = _tostring(p58)
            local v336 = #v335 > 18

            if v336 then
                v336 = v335:sub(1, 18) .. "..."
            end

            return v336 or v335
        end

        function t3.value64(p59)
            if type(p59) ~= "string" then
                return nil
            end

            local v338, v339, v340 = p59:match("hsl%((%-?%d+),%s*(%d+)%%,?%s*(%d+)%%%?)")

            if not v338 then
                return nil
            end

            local v341 = tonumber(v338) % 360
            local v342 = tonumber(v339) / 100

            local function v343(p60, p61, p62)
                if p62 < 0 then
                    p62 += 1
                end

                if p62 > 1 then
                    p62 -= 1
                end

                if p62 < 0.16666666666667 then
                    return p60 + (p61 - p60) * 6 * p62
                end

                if p62 < 0.5 then
                    return p61
                end

                if p62 < 0.66666666666667 then
                    return p60 + (p61 - p60) * (0.66666666666667 - p62) * 6
                end

                return p60
            end

            local v344 = tonumber(v340) / 100
            local v345, v346

            if v342 == 0 then
                v345 = v344
                v346 = v344
            else
                local v347 = v344 < 0.5 and v344 * (1 + v342) or v344 + v342 - v344 * v342
                local v348 = 2 * v344 - v347

                v346 = v343(v348, v347, v341 / 360 + 0.33333333333333)
                v345 = v343(v348, v347, v341 / 360)
                v344 = v343(v348, v347, v341 / 360 - 0.33333333333333)
            end

            return string.format("#%02X%02X%02X", math.floor(v346 * 255 + 0.5), math.floor(v345 * 255 + 0.5), math.floor(v344 * 255 + 0.5))
        end

        local function v123(p63, p64)
            local _tostring = tostring

            if not p63 then
                p63 = ""
            end

            local v352 = _tostring(p63)

            if v352:match("^hsl%(") then
                local v353 = t3.value64(v352)

                if v353 then
                    return v353
                end
            end

            if v352:match("^#%x%x%x%x%x%x$") then
                return v352
            end

            local v354 = tonumber(p64) or 0

            return string.format("#%02X%02X%02X", v354 * 97 % 200 + 30, v354 * 57 % 200 + 30, v354 * 29 % 200 + 30)
        end

        local v124 = (function()
            local _syn2 = syn

            if _syn2 then
                _syn2 = syn.websocket

                if _syn2 then
                    _syn2 = syn.websocket.connect
                end
            end

            if _syn2 then
                return syn.websocket.connect
            end

            local _WebSocket = WebSocket

            if _WebSocket then
                _WebSocket = WebSocket.connect
            end

            if _WebSocket then
                return WebSocket.connect
            end

            local _websocket = websocket

            if _websocket then
                _websocket = websocket.connect
            end

            if _websocket then
                return websocket.connect
            end

            return nil
        end)()
        local v125, v126, v127, v128 = (function()
            local ok4, result4 = pcall(function()
                return CoreGui["XanBar_XZuyaX'sHUB"].Main.Content.ContentContainer.GlobalChat.Scroll
            end)
            local v362 = ok4 and result4 or nil

            if not v362 then
                warn("[ZCHAT] Need Xan UI")

                return
            end

            local ZCHAT_UI = v362:FindFirstChild("ZCHAT_UI")

            if ZCHAT_UI then
                ZCHAT_UI:Destroy()
            end

            local Frame = Instance.new("Frame", v362)

            Frame.Name = "ZCHAT_UI"
            Frame.BackgroundTransparency = 1
            Frame.Size = UDim2.new(1, 0, 1, 0)

            local Frame2 = Instance.new("Frame", Frame)

            Frame2.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
            Frame2.BackgroundTransparency = 0.12
            Frame2.BorderSizePixel = 0
            Frame2.Position = UDim2.new(0.02, 0, 0.02, 0)
            Frame2.Size = UDim2.new(0.96, 0, 0.96, 0)
            Instance.new("UICorner", Frame2).CornerRadius = UDim.new(0, 12)

            local TextLabel = Instance.new("TextLabel", Frame2)

            TextLabel.BackgroundTransparency = 1
            TextLabel.Position = UDim2.new(0.03, 0, 0.02, 0)
            TextLabel.Size = UDim2.new(0.94, 0, 0.06, 0)
            TextLabel.Font = Enum.Font.GothamBold
            TextLabel.TextSize = 14
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.Text = "💬 ZChat"

            local ScrollingFrame = Instance.new("ScrollingFrame", Frame2)

            ScrollingFrame.Name = "Scroll"
            ScrollingFrame.Position = UDim2.new(0.03, 0, 0.1, 0)
            ScrollingFrame.Size = UDim2.new(0.94, 0, 0.68, 0)
            ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
            ScrollingFrame.ScrollBarThickness = 4
            ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
            ScrollingFrame.BackgroundTransparency = 1
            Instance.new("UIListLayout", ScrollingFrame).Padding = UDim.new(0, 6)

            local TextBox = Instance.new("TextBox", Frame2)

            TextBox.Position = UDim2.new(0.03, 0, 0.8, 0)
            TextBox.Size = UDim2.new(0.7, 0, 0.08, 0)
            TextBox.Text = ""
            TextBox.BackgroundColor3 = Color3.fromRGB(10, 10, 14)
            TextBox.TextColor3 = Color3.new(1, 1, 1)
            TextBox.Font = Enum.Font.Gotham
            TextBox.TextSize = 14
            TextBox.PlaceholderText = "Type message..."
            TextBox.ClearTextOnFocus = false
            Instance.new("UICorner", TextBox).CornerRadius = UDim.new(0, 10)

            local TextButton = Instance.new("TextButton", Frame2)

            TextButton.Position = UDim2.new(0.75, 0, 0.8, 0)
            TextButton.Size = UDim2.new(0.22, 0, 0.08, 0)
            TextButton.Text = "Send"
            TextButton.Font = Enum.Font.GothamBold
            TextButton.TextSize = 14
            TextButton.TextColor3 = Color3.new(1, 1, 1)
            TextButton.BackgroundColor3 = Color3.fromRGB(90, 60, 160)
            Instance.new("UICorner", TextButton).CornerRadius = UDim.new(0, 10)

            local TextLabel2 = Instance.new("TextLabel", Frame2)

            TextLabel2.BackgroundTransparency = 1
            TextLabel2.Position = UDim2.new(0.03, 0, 0.9, 0)
            TextLabel2.Size = UDim2.new(0.94, 0, 0.05, 0)
            TextLabel2.Font = Enum.Font.Gotham
            TextLabel2.TextSize = 13
            TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
            TextLabel2.TextColor3 = Color3.fromRGB(200, 200, 200)
            TextLabel2.Text = "Status: Connecting..."

            return ScrollingFrame, TextLabel2, TextBox, TextButton
        end)()

        t3.value65 = v125
        t3.value66 = v126
        t3.value67 = v127

        if not t3.value65 then
            return
        end

        local function v129(p65, p66)
            local Frame = Instance.new("Frame", p65)

            Frame.BackgroundTransparency = 1
            Frame.Size = UDim2.new(1, 0, 0, 22)
            Frame.AutomaticSize = Enum.AutomaticSize.Y

            local UIListLayout = Instance.new("UIListLayout", Frame)

            UIListLayout.FillDirection = Enum.FillDirection.Horizontal
            UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
            UIListLayout.Padding = UDim.new(0, 8)

            local icon = p66.icon

            if icon then
                icon = tostring(p66.icon) ~= ""
            end

            if icon then
                local str = tostring(p66.icon)

                if str:match("^%d+$") then
                    str = "rbxassetid://" .. str
                end

                local ImageLabel = Instance.new("ImageLabel", Frame)

                ImageLabel.Size = UDim2.new(0, 16, 0, 16)
                ImageLabel.BackgroundTransparency = 1
                ImageLabel.Image = str
                ImageLabel.ScaleType = Enum.ScaleType.Fit
                ImageLabel.LayoutOrder = 1
            end

            local tag = p66.tag

            if tag then
                tag = p66.tag ~= ""
            end

            if tag then
                tag = "[" .. p66.tag .. "] "
            end

            local v379 = tag or ""
            local v380 = v123(p66.tagColor, p66.uid)
            local TextLabel = Instance.new("TextLabel", Frame)

            TextLabel.BackgroundTransparency = 1
            TextLabel.RichText = true
            TextLabel.TextWrapped = true
            TextLabel.AutomaticSize = Enum.AutomaticSize.XY
            TextLabel.Font = Enum.Font.GothamBold
            TextLabel.TextSize = 13
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            TextLabel.LayoutOrder = 2
            TextLabel.Text = string.format("<font color='%s'>%s%s</font>:", v380, v379, v122(p66.username or "Unknown"))

            local TextLabel3 = Instance.new("TextLabel", Frame)

            TextLabel3.BackgroundTransparency = 1
            TextLabel3.RichText = false
            TextLabel3.TextWrapped = true
            TextLabel3.AutomaticSize = Enum.AutomaticSize.XY
            TextLabel3.Font = Enum.Font.Gotham
            TextLabel3.TextSize = 13
            TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
            TextLabel3.TextColor3 = Color3.new(1, 1, 1)
            TextLabel3.LayoutOrder = 3
            TextLabel3.Text = tostring(p66.m or "")
        end
        local function v130()
            t3.value65:ClearAllChildren()
            Instance.new("UIListLayout", t3.value65).Padding = UDim.new(0, 6)

            for _, v in ipairs(t3.value59) do
                local v385 = v

                pcall(function()
                    v129(t3.value65, v385)
                end)
            end

            task.defer(function()
                t3.value65.CanvasPosition = Vector2.new(0, 1000000000)
            end)
        end
        local function v131(p67)
            local v387 = not p67.icon

            if not v387 then
                v387 = tostring(p67.icon) == ""
            end

            if v387 then
                v387 = t3.value58[tonumber(p67.uid) or 0]
            end

            if v387 then
                p67.icon = t3.value57
            end

            p67.tagColor = v123(p67.tagColor, p67.uid)
            table.insert(t3.value59, p67)

            if #t3.value59 > t3.value56 then
                table.remove(t3.value59, 1)
            end

            v130()
        end
        local function v132()
            if not t3.value63 or not t3.value62 then
                return
            end

            local v388 = t3.value67.Text:gsub("\n", " "):gsub("%s+", " ")

            if v388 == "" then
                return
            end

            pcall(function()
                local value62 = t3.value62
                local v498 = v388
                local value61 = t3.value61
                local value60 = t3.value60
                local Send = value62.Send
                local UserId = t2.value2.UserId
                local t7 = {
						type = "send",
						msg = v498,
						hide = value61,
						username = value60,
						uid = UserId
					}
                local ok5, result5 = pcall(function()
                    return HttpService:JSONEncode(t7)
                end)
                Send(value62, ok5 and result5 or nil)
            end)
            t3.value67.Text = ""
        end

        v128.MouseButton1Click:Connect(v132)
        t3.value67.FocusLost:Connect(function(enterPressed)
            if enterPressed then
                v132()
            end
        end)
        v82:AddInput("Change Username", {
				Default = t3.value60,
				Placeholder = "Enter Username",
				Flag = "ZChatUsernameInput"
			}, function(p68)
            local _tostring = tostring

            if not p68 then
                p68 = ""
            end

            local v404 = _tostring(p68):sub(1, 30)

            if #v404 < 1 then
                return
            end

            t3.value60 = v404
            v21.Success("ZChat", "Username changed to: " .. t3.value60)

            if t3.value63 and t3.value62 then
                pcall(function()
                    local value62 = t3.value62
                    local value60 = t3.value60
                    local UserId = t2.value2.UserId
                    local t8 = {}
                    local t9 = {
							type = "send",
							msg = "",
							username = value60,
							uid = UserId
						}
                    local ok6, result6 = pcall(function()
                        return HttpService:JSONEncode(t9)
                    end)
                    local v521 = ok6 and result6 or nil
                    t8[1] = v521
                    value62:Send(v1(t8))
                end)
            end
        end)
        v131({
				username = "System",
				uid = 0,
				tag = "",
				icon = "",
				tagColor = "#888888",
				m = "ZChat Loaded"
			});
        (function()
            if not v124 then
                t3.value66.Text = "Status: WebSocket unsupported"

                return
            end
            if t3.value62 then
                pcall(function()
                    pcall(function()
                        local value62 = t3.value62
                        local t10 = {
								type = "bye"
							}
                        local ok7, result7 = pcall(function()
                            return HttpService:JSONEncode(t10)
                        end)

                        value62:Send(ok7 and result7 or nil)
                    end)

                    for _, v in pairs({
							"Close",
							"close",
							"disconnect"
						}) do
                        local v508 = v

                        if t3.value62[v508] then
                            pcall(function()
                                t3.value62[v508](t3.value62)
                            end)
                        end
                    end
                end)
                t3.value62 = nil
                t3.value63 = false
            end
            local value55 = t3.value55
            local UserId = t2.value2.UserId
            local value60 = t3.value60
            local v393 = HttpService
            local _tostring = tostring
            if not value60 then
                value60 = ""
            end
            local t11 = { (_tostring(value60)) }
            local v396 = "?uid=" .. UserId .. "&user=" .. v393:UrlEncode(v1(t11))
            local u397 = value55 .. v396
            local ok8, result8 = pcall(function()
                return v124(u397)
            end)
            local v400 = not ok8
            if not v400 then
                v400 = not result8
            end
            if v400 then
                t3.value66.Text = "Status: WS connect failed"

                return
            end
            t3.value62 = result8
            t3.value63 = true
            v130()
            local function v401(p69)
                local ok9, result9 = pcall(function()
                    return HttpService:JSONDecode(p69)
                end)
                local v512 = ok9 and result9 or nil

                if not v512 then
                    return
                end

                if v512.type == "msg" and v512.data then
                    v131(v512.data)

                    return
                end

                if v512.type == "online" then
                    t3.value66.Text = "Status: Online | Players: " .. tostring(v512.online)

                    return
                end

                if v512.type == "hello" then
                    t3.value66.Text = "Status: Online | Players: " .. tostring(v512.online or "")

                    return
                end

                if v512.type == "ping" then
                    pcall(function()
                        local value62 = t3.value62
                        local t12 = {}
                        local t13 = {
								type = "pong"
							}
                        local ok10, result10 = pcall(function()
                            return HttpService:JSONEncode(t13)
                        end)
                        local v552 = ok10 and result10 or nil

                        t12[1] = v552
                        value62:Send(v1(t12))
                    end)
                end
            end
            pcall(function()
                if t3.value62.OnMessage then
                    t3.value62.OnMessage:Connect(v401)

                    return
                end

                if t3.value62.onmessage then
                    function t3.value62.onmessage(p70)
                        v401(p70.data or p70)
                    end

                    return
                end

                if t3.value62.receive then
                    coroutine.wrap(function()
                        while true do
                            local ok11, result11 = pcall(function()
                                return t3.value62.receive()
                            end)
                            local v556 = not ok11

                            if not v556 then
                                v556 = not result11
                            end

                            if v556 then
                                break
                            end

                            v401(result11)
                        end
                    end)()
                end
            end)
            pcall(function()
                if t3.value62.OnClose then
                    t3.value62.OnClose:Connect(function()
                        t3.value63 = false
                        t3.value66.Text = "Status: Disconnected"
                    end)

                    return
                end

                if t3.value62.onclose then
                    function t3.value62.onclose()
                        t3.value63 = false
                        t3.value66.Text = "Status: Disconnected"
                    end
                end
            end)
        end)()
        v83:AddLabel("SHOP")
        v83:AddDivider()

        local Pack = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PacksService"):WaitForChild("RE"):WaitForChild("Pack")

        v83:AddButton("Buy GoalEffects (¥2000)", function()
            pcall(function()
                Pack:FireServer("GoalEffects")
            end)
            v21.Success("Purchase", "GoalEffects bought")
        end)
        v83:AddButton("Buy Emote (¥1200)", function()
            pcall(function()
                Pack:FireServer("Emotes")
            end)
            v21.Success("Purchase", "Emote bought")
        end)
        v83:AddButton("Buy Cards (¥1800)", function()
            pcall(function()
                Pack:FireServer("Cards")
            end)
            v21.Success("Purchase", "Cards bought")
        end)
        v83:AddLabel("Battlepass Event")

        local u134 = false

        v83:AddToggle("Auto Claim Event", {
				Default = false,
				Flag = "AutoClaimEvent"
			}, function(p71)
            u134 = p71

            if p71 then
                v21.Success("Auto Claim", "ON")
                task.spawn(function()
                    local ClaimAll = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("BattlepassEventService"):WaitForChild("RF"):WaitForChild("ClaimAll")

                    while u134 do
                        pcall(function()
                            ClaimAll:InvokeServer()
                        end)
                        task.wait(0.3)
                    end
                end)

                return
            end

            v21.Warning("Auto Claim", "OFF")
        end)

        local u135 = false

        v83:AddToggle("Auto Claim Battlepass", {
				Default = false,
				Flag = "AutoClaimBP"
			}, function(p72)
            u135 = p72

            if p72 then
                v21.Success("Auto Claim BP", "ON")
                task.spawn(function()
                    local ClaimBattlepass = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("BattlepassEventService"):WaitForChild("RF"):WaitForChild("ClaimBattlepass")

                    while u135 do
                        for i = 1, 75 do
                            pcall(function()
                                ClaimBattlepass:InvokeServer(i, "Free")
                            end)
                        end

                        task.wait(0.3)
                    end
                end)

                return
            end

            v21.Warning("Auto Claim BP", "OFF")
        end)

        local u136 = false

        v83:AddToggle("Auto Spin Battlepass Wheel", {
				Default = false,
				Flag = "AutoSpinBP"
			}, function(p73)
            u136 = p73

            if p73 then
                v21.Success("Auto Spin", "ON")
                task.spawn(function()
                    local Spin = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("SpinwheelService"):WaitForChild("RF"):WaitForChild("Spin")

                    while u136 do
                        pcall(function()
                            Spin:InvokeServer()
                        end)
                        task.wait(0.5)
                    end
                end)

                return
            end

            v21.Warning("Auto Spin", "OFF")
        end)

        local PlaceId = game.PlaceId

        v84:AddSection("Server Hop | Press Again If Not Found the Server")

        local function v138(p74, p75)
            local s5 = ""
            local t14 = {}

            if s5 ~= "" then
                if not (#t14 > 0) then
                end
            end

            repeat
                local success, result = pcall(function()
                    local _game = game
                    local t15 = { string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=%s&limit=100&cursor=%s", PlaceId, p74, s5) }

                    return _game:HttpGet(v1(t15))
                end)
                if not success then
                    warn("Failed to fetch servers")

                    break
                end
                local data = HttpService:JSONDecode(result)
                s5 = data.nextPageCursor or ""
                for _, v in ipairs(data.data) do
                    local v417 = p75(v)

                    if v417 then
                        v417 = v.id ~= game.JobId
                    end

                    if v417 then
                        table.insert(t14, v)
                    end
                end
            until s5 == "" or #t14 > 0

            return t14
        end

        v84:AddButton("Low Server", function()
            local v419 = v138("Asc", function(p76)
                return p76.playing <= 3
            end)

            if #v419 > 0 then
                TeleportService:TeleportToPlaceInstance(PlaceId, v419[math.random(1, #v419)].id, t2.value2)

                return
            end

            warn("No matching server found.")
        end)
        v84:AddButton("Most Player Server", function()
            local v420 = v138("Desc", function(p77)
                local v530 = p77.playing >= 8

                if v530 then
                    v530 = p77.playing < p77.maxPlayers
                end

                return v530
            end)

            if #v420 > 0 then
                TeleportService:TeleportToPlaceInstance(PlaceId, v420[math.random(1, #v420)].id, t2.value2)

                return
            end

            warn("No matching server found.")
        end)
        v84:AddButton("Rejoin Game", function()
            TeleportService:Teleport(PlaceId, t2.value2)
        end)
        v85:AddSection("UI Settings")
        v21.ToggleKey = nil

        local s6 = "K"
        local s7 = "K"

        local function v141(p78)
            if not Enum.KeyCode[p78] then
                return
            end;

            ("K"):Disconnect()

            if s7 then
                s7:Disconnect()
            end

            s6 = p78
            UserInputService.InputBegan:Connect(function(input, gameProcessed)
                local v533 = not gameProcessed

                if v533 then
                    v533 = input.KeyCode == Enum.KeyCode.RightShift
                end

                if v533 then
                    return
                end
            end)
            UserInputService.InputBegan:Connect(function(input, gameProcessed)
                local v536 = not gameProcessed

                if v536 then
                    v536 = input.KeyCode == Enum.KeyCode[s6]
                end

                if v536 then
                    t2.value1:Toggle()
                end
            end)
        end

        v141("K")
        v85:AddKeybind("Toggle UI Keybind", {
				Default = Enum.KeyCode.K,
				Flag = "ToggleKeybindFlag"
			}, function(p79)
            v141(p79.Name)
        end)
        v85:AddDropdown("UI Theme", {
				Options = {
					"Default",
					"Rose",
					"Midnight",
					"Blood",
					"Emerald",
					"Forest",
					"Neon",
					"Sunset",
					"Ocean"
				},
				Default = "Default",
				Flag = "UIThemeFlag"
			}, function(p80)
            v21.SetTheme(p80)
            v21.Success("Theme Changed", "UI theme changed to " .. p80)
        end)
        v85:AddSection("Performance Settings")
        v85:AddToggle("Show FPS Counter", {
				Default = false,
				Flag = "ShowFPSCounterFlag"
			}, function(p81)
            v21.ToggleStatsWidget(p81)
        end)
        v85:AddSection("UI")
        v85:CreateUnloadButton({
				Name = "Destroy UI"
			})
    end
	})
end
