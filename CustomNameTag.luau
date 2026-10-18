--[[
    ===================================================================
    ๐ ASTROCYNA WATERMARK & CUSTOM NAME TAG SYSTEM (LOADSTRING READY)
    ===================================================================
    - เธเนเธฒเธข / Studio: Astrocyna
    - เธเธฒเธฃเนเธเนเธเธฒเธ: เธฃเธญเธเธฃเธฑเธเธเธฒเธฃเน€เธฃเธตเธขเธเธเนเธฒเธ loadstring(...)() เนเธเธชเธเธฃเธดเธเธ•เนเธญเธทเนเธเนเธ”เนเธ—เธฑเธเธ—เธต
    - เธซเธเนเธฒเธ—เธตเน: เธฅเธฒเธขเธเนเธณ (Watermark Branding) เนเธชเธ”เธเธเธทเนเธญเธเนเธฒเธข Astrocyna เนเธฅเธฐ DisplayName เธเธนเนเนเธเน
    - เธฃเธนเธเนเธเธ: เธเธฅเนเธญเธ HUD เธชเนเธ•เธฅเน Cyber เธชเธตเธเนเธฒเธเธฃเธฒเธก (Cyan/Azure) เธเธฃเนเธญเธกเนเธญเธเธญเธ Devil Penguin เธเธเธฒเธเธเนเธฒเธ
    - เน€เธญเธเน€เธเธเธ•เน:
        1. Rotating Neon Laser Sweep: เธฅเธณเนเธชเธเธเธตเธญเธญเธเธงเธดเนเธเธงเธเธฃเธญเธเธเธฃเธญเธเธญเธขเนเธฒเธเธ•เนเธญเน€เธเธทเนเธญเธ
        2. Text Shimmer Wave: เธฅเธณเนเธชเธเธเธดเธกเน€เธกเธญเธฃเนเธงเธดเนเธเธเนเธฒเธเธ•เธฑเธงเธซเธเธฑเธเธชเธทเธญ Astrocyna เน€เธเนเธเธฃเธฐเธฅเธญเธ
        3. Gradient Text Shadow: เน€เธเธฒเธ•เธฑเธงเธซเธเธฑเธเธชเธทเธญเธเนเธญเธขเน เธเธฒเธเธเธฒเธเธเนเธฒเธขเนเธเธเธงเธฒ
        4. Dynamic Zoom Clamping: เธเธณเธเธฑเธ”เธเธเธฒเธ” tag เนเธกเนเนเธซเนเธเธขเธฒเธขเนเธซเธเนเธเธเธฅเนเธเธเธญเธซเธฃเธทเธญเธ—เธฑเธเธเธนเนเน€เธฅเนเธเน€เธกเธทเนเธญเธเธนเธกเธเธฅเนเธญเธ
--]]

local Args = ... -- เธฃเธฑเธเธเธฒเธฃเธฒเธกเธดเน€เธ•เธญเธฃเน Override เธซเธฒเธเธชเนเธเธเนเธฒเธ loadstring(code)({ ... })

-- ===================================================================
-- โ๏ธ CONFIGURATION (เธเนเธฒเน€เธฃเธดเนเธกเธ•เนเธเธเธญเธเธฃเธฐเธเธ Watermark เธเนเธฒเธข Astrocyna)
-- ===================================================================
local DefaultConfig = {
    -- [1] เธเนเธญเธกเธนเธฅเธ—เธฑเนเธงเนเธเธเธญเธ Name Tag เธฅเธฒเธขเธเนเธณ (Default / LocalPlayer)
    Self = {
        CustomName = "Astrocyna",                      -- เธเธทเนเธญเธเนเธฒเธขเธเธนเนเธเธฑเธ’เธเธฒ
        UsePlayerDisplayName = true,                  -- เธ”เธถเธ DisplayName เธเธญเธเธเธนเนเน€เธฅเนเธเธ—เธตเนเธฃเธฑเธเธชเธเธฃเธดเธเธ•เนเธกเธฒเนเธชเธ”เธเนเธ–เธงเธฅเนเธฒเธ
        Subtitle = nil,                               -- เธเนเธญเธเธงเธฒเธกเธชเธณเธฃเธญเธเธซเธฒเธเธเธดเธ” UsePlayerDisplayName
        
        -- เธเธเธฒเธ”เธ•เธฑเธงเธญเธฑเธเธฉเธฃเนเธฅเธฐเนเธญเธเธญเธ
        NameTextSize = 22,                             -- เธเธเธฒเธ”เธเธญเธเธ•เนเธเธทเนเธญ
        SubtitleTextSize = 16,                         -- เธเธเธฒเธ”เธเธญเธเธ•เน Subtitle
        IconSize = Vector2.new(50, 50),                -- เธเธเธฒเธ”เธเธญเธ Icon เธเธงเนเธฒเธ x เธชเธนเธ
        
        -- เธชเธตเธ•เธฑเธงเธญเธฑเธเธฉเธฃ (Theme เธชเธตเธเนเธฒเธเธฃเธฒเธก)
        NameColor = Color3.fromRGB(0, 215, 255),       -- เธชเธตเธเนเธฒเธเธฃเธฒเธกเธชเธงเนเธฒเธเธชเธ”เนเธช (Electric Cyan)
        SubtitleColor = Color3.fromRGB(220, 240, 255), -- เธชเธตเธเธฒเธงเนเธญเธเนเธเธฅเธนเธเธฃเธฐเธเธฒเธขเธเนเธฒ (Frost Ice Blue)
        
        -- เธชเนเธ•เธฅเนเธเธฃเธญเธเนเธฅเธฐเธเธทเนเธเธซเธฅเธฑเธ (Theme เธเนเธฒเธเธฃเธฒเธกเธกเธดเธ”เนเธเธ—เน)
        BorderColor = Color3.fromRGB(0, 185, 255),     -- เธชเธตเธเธฃเธญเธเธซเธฅเธฑเธ (เธเนเธฒเธเธฃเธฒเธกเธเธตเธญเธญเธ)
        BorderThickness = 2.5,                         -- เธเธงเธฒเธกเธซเธเธฒเธเธญเธเน€เธชเนเธเธเธญเธ (Stroke Thickness)
        BackgroundColor = Color3.fromRGB(8, 14, 22),   -- เธชเธตเธเธทเนเธเธซเธฅเธฑเธเธเธฅเนเธญเธ HUD (เธเนเธณเน€เธเธดเธเน€เธเนเธกเธกเธดเธ”เนเธเธ—เน)
        BackgroundTransparency = 0.15,                 -- เธเธงเธฒเธกเนเธเธฃเนเธเนเธชเธเธญเธเธเธทเนเธเธซเธฅเธฑเธ
        CornerRadius = 10,                             -- เธเธงเธฒเธกเนเธเนเธเธกเธเธเธญเธเธเธญเธเธเธฅเนเธญเธ (UICorner)
        
        -- เธเธฒเธฃเน€เธงเนเธเธฃเธฐเธขเธฐเธ เธฒเธขเนเธเธเธฃเธญเธ (Padding & Spacing)
        PaddingHorizontal = 18,                        -- เธฃเธฐเธขเธฐเธซเนเธฒเธเธเธญเธเธเนเธฒเธข-เธเธงเธฒ
        PaddingVertical = 8,                           -- เธฃเธฐเธขเธฐเธซเนเธฒเธเธเธญเธเธเธ-เธฅเนเธฒเธ
        Spacing = 14,                                  -- เธฃเธฐเธขเธฐเธซเนเธฒเธเธฃเธฐเธซเธงเนเธฒเธ [เนเธญเธเธญเธ] เธเธฑเธ [เธเนเธญเธเธงเธฒเธก]
        
        -- เธเธฒเธฃเนเธชเธ”เธเธเธฅ Icon
        ShowLeftIcon = true,                           -- เนเธชเธ”เธ Icon เธเธฑเนเธเธเนเธฒเธข
        ShowRightIcon = true,                          -- เนเธชเธ”เธ Icon เธเธฑเนเธเธเธงเธฒ

        -- เนเธญเธเธดเน€เธกเธเธฑเธเน€เธญเธเน€เธเธเธ•เนเนเธเธ•เธฑเธงเธซเธเธฑเธเธชเธทเธญ (Text Shimmer Wave)
        TextAnimation = {
            Enabled = true,                                -- เน€เธเธดเธ”/เธเธดเธ” เนเธญเธเธดเน€เธกเธเธฑเธเนเธเธ•เธฑเธงเธซเธเธฑเธเธชเธทเธญ
            Mode = "ShimmerSweep",                         -- เนเธซเธกเธ”เธเธฃเธฐเธเธฒเธขเนเธชเธเธงเธดเนเธเธเนเธฒเธ
            Speed = 1.3,                                   -- เธเธงเธฒเธกเน€เธฃเนเธงเธเธญเธเธเธฃเธฐเธเธฒเธขเนเธชเธ
            ShimmerColor = Color3.fromRGB(255, 255, 255),  -- เธชเธตเธเธฃเธฐเธเธฒเธขเนเธชเธเธเนเธฒ (เธเธฒเธงเธชเธงเนเธฒเธ)
            GlowColor = Color3.fromRGB(120, 235, 255),     -- เธชเธตเน€เธฃเธทเธญเธเนเธชเธเธเธเธฒเธเธเนเธฒเธ (เธเนเธฒเธเธฃเธฒเธกเธชเธงเนเธฒเธ)
        },

        -- เนเธญเธเธดเน€เธกเธเธฑเธเน€เธญเธเน€เธเธเธ•เนเธ•เธฃเธเธเธฃเธญเธเธชเธต (Rotating Neon Laser Sweep)
        BorderAnimation = {
            Enabled = true,                                -- เน€เธเธดเธ”/เธเธดเธ” เนเธญเธเธดเน€เธกเธเธฑเธเธ•เธฃเธเธเธญเธ
            Mode = "NeonSweep",                            -- เนเธซเธกเธ”เธฅเธณเนเธชเธเธงเธดเนเธเธงเธเธฃเธญเธเธเธฃเธญเธ
            RotationSpeed = 110,                           -- เธเธงเธฒเธกเน€เธฃเนเธงเนเธเธเธฒเธฃเธซเธกเธธเธเธฃเธญเธเธเธฃเธญเธ (deg/s)
            BaseBorderColor = Color3.fromRGB(10, 45, 80),  -- เธชเธตเธเนเธฒเธเธฃเธฒเธกเน€เธเนเธกเธเธทเนเธเธซเธฅเธฑเธเธเธญเธ
            BeamColor = Color3.fromRGB(0, 210, 255),       -- เธชเธตเธเนเธฒเธเธฃเธฒเธกเธชเธ”เธเธญเธเธฅเธณเนเธชเธเธเธตเธญเธญเธ
            HighlightColor = Color3.fromRGB(220, 250, 255),-- เธเธฃเธฐเธเธฒเธขเนเธชเธเธชเธตเธเธฒเธงเนเธญเธเนเธเธฅเธนเธชเธงเนเธฒเธเธเนเธฒ
            PulseThickness = true,                         -- เนเธซเนเธเธญเธเธซเธเธฒ-เธเธฒเธ เน€เธ•เนเธเน€เธเนเธเธเธฑเธเธซเธงเธฐเธกเธตเธกเธดเธ•เธด
            MinThickness = 2.2,                            -- เธเธงเธฒเธกเธซเธเธฒเธ•เนเธณเธชเธธเธ”
            MaxThickness = 3.2,                            -- เธเธงเธฒเธกเธซเธเธฒเธชเธนเธเธชเธธเธ”
            PulseSpeed = 2.5,                              -- เธเธงเธฒเธกเน€เธฃเนเธงเนเธเธเธฒเธฃเน€เธ•เนเธ
        },

        -- เน€เธญเธเน€เธเธเธ•เนเธกเธดเธ•เธดเนเธฅเธฐเน€เธเธฒเนเธ Text
        Effects = {
            EnableTextGradientShadow = true,               -- เน€เธเธฒเธ•เธฑเธงเธซเธเธฑเธเธชเธทเธญเธเนเธญเธขเน เธเธฒเธเธเธฒเธเธเนเธฒเธขเนเธเธเธงเธฒ
            TextShadowOffset = Vector2.new(2, 2),          -- เธฃเธฐเธขเธฐเน€เธขเธทเนเธญเธเธเธญเธเน€เธเธฒ
            TextShadowColor = Color3.fromRGB(2, 6, 14),    -- เธชเธตเน€เธเธฒเธ•เธฑเธงเธซเธเธฑเธเธชเธทเธญ (เธกเธดเธ”เนเธเธ—เนเธเธฅเธนเน€เธเนเธก)
            TextShadowStartAlpha = 0.15,                   -- เธเธงเธฒเธกเธ—เธถเธเธเธฑเนเธเธเนเธฒเธข
            TextShadowEndAlpha = 1.0,                      -- เธเธงเธฒเธกเธ—เธถเธเธเธฑเนเธเธเธงเธฒ
            EnableGradient = true,                         -- เนเธชเธเธชเธฐเธ—เนเธญเธ Gradient เธเธเธเธฅเนเธญเธ HUD
            TopGradientColor = Color3.fromRGB(15, 36, 56), -- เนเธชเธเน€เธเธฒเธชเธฐเธ—เนเธญเธเธ”เนเธฒเธเธเธ
            BottomGradientColor = Color3.fromRGB(5, 10, 16),-- เธชเธตเน€เธเธฒเน€เธเนเธกเธ”เนเธฒเธเธฅเนเธฒเธ
        }
    },

    -- [2] เธ—เธตเนเธญเธขเธนเนเนเธเธฅเนเธฃเธนเธ Icon เนเธฅเธฐ Direct Download URL เธชเธณเธซเธฃเธฑเธเน€เธเธฃเธทเนเธญเธเธเธเธญเธทเนเธเธ—เธตเนเธขเธฑเธเนเธกเนเธกเธตเนเธเธฅเน
    IconPath = "Icon name tag/Icon.png",
    IconDownloadUrl = "https://raw.githubusercontent.com/EQWTQWSd/Astrocyna-NameTag/main/Icon.png", -- เธฅเธดเธเธเนเธ”เธฒเธงเธเนเนเธซเธฅเธ” Icon เธชเธณเธฃเธญเธเธชเธณเธซเธฃเธฑเธเนเธเธเธเนเธฒเธข

    -- [3] เธเธฒเธฃเธ•เธฑเนเธเธเนเธฒเธ•เธณเนเธซเธเนเธเนเธฅเธฐเธเธฒเธฃเธกเธญเธเน€เธซเนเธ (BillboardGui Settings & Zoom Clamping)
    Billboard = {
        StudsOffset = Vector3.new(0, 1.5, 0), -- เธฃเธฐเธขเธฐเธฅเธญเธขเน€เธซเธเธทเธญเธจเธตเธฃเธฉเธฐ (เนเธเธ Y)
        AlwaysOnTop = true,                   -- เธกเธญเธเธ—เธฐเธฅเธธเธเธณเนเธเธเนเธ”เนเธ•เธฅเธญเธ”เน€เธงเธฅเธฒ
        MaxDistance = 200,                    -- เธฃเธฐเธขเธฐเธเธฒเธฃเธกเธญเธเน€เธซเนเธเธชเธนเธเธชเธธเธ”
        HideRobloxDefaultName = true,         -- เธเนเธญเธเธเธทเนเธญเน€เธ”เธดเธกเธเธญเธ Roblox เน€เธเธทเนเธญเนเธกเนเนเธซเนเธเนเธญเธเธเธฑเธ
        EnableDynamicScale = true,            -- เธเธฃเธฑเธเธชเน€เธเธฅเธญเธฑเธ•เนเธเธกเธฑเธ•เธดเธ•เธฒเธกเธฃเธฐเธขเธฐเธเธฅเนเธญเธ
        ReferenceDistance = 16,               -- เธฃเธฐเธขเธฐเธเธฅเนเธญเธเธกเธฒเธ•เธฃเธเธฒเธเธ—เธตเนเธชเน€เธเธฅ 1.0x
        MinScale = 0.48,                      -- เธชเน€เธเธฅเธเธเธฒเธ”เน€เธฅเนเธเธชเธธเธ”เน€เธกเธทเนเธญเธเธนเธกเธญเธญเธเนเธเธฅ
        MaxScale = 1.0,                       -- เธชเน€เธเธฅเธเธเธฒเธ”เนเธซเธเนเธชเธธเธ”เน€เธกเธทเนเธญเธเธนเธกเน€เธเนเธฒเนเธเธฅเน
    },

    -- [4] เนเธซเธกเธ”เธเธฒเธฃเธ—เธณเธเธฒเธเธเธญเธ Watermark:
    -- "LocalPlayer" = เนเธชเธ”เธเธ—เธตเนเธซเธฑเธงเธเธญเธเธเธนเนเธ—เธตเนเธฃเธฑเธเธชเธเธฃเธดเธเธ•เน
    -- "AllPlayers"   = เนเธชเธ”เธเธ—เธธเธเธเธเนเธเน€เธเธดเธฃเนเธเน€เธงเธญเธฃเน
    TargetMode = "LocalPlayer",

    -- [5] เธ•เธฒเธฃเธฒเธ Custom เธฃเธฒเธขเธเธ
    CustomUsers = {}
}

-- เธฃเธฐเธเธเธฃเธงเธกเธเนเธฒ Argument เธซเธฒเธเธเธนเนเนเธเนเธชเนเธเธเนเธฒเธเธฃเธฑเธเนเธ•เนเธเธเนเธฒเธ loadstring(...)({ ... })
local Config = DefaultConfig
if typeof(Args) == "table" then
    for k, v in pairs(Args) do
        if typeof(v) == "table" and typeof(Config[k]) == "table" then
            for subK, subV in pairs(v) do
                Config[k][subK] = subV
            end
        else
            Config[k] = v
        end
    end
end

-- ===================================================================
-- ๐ ๏ธ SYSTEM CORE & LOGIC (Non-blocking Thread)
-- ===================================================================

task.spawn(function()
    local Players = game:GetService("Players")
    local TweenService = game:GetService("TweenService")
    local RunService = game:GetService("RunService")
    local LocalPlayer = Players.LocalPlayer

    -- 1. เธฃเธฐเธเธ Auto-Installer เธ”เธฒเธงเธเนเนเธซเธฅเธ” Icon.png เธญเธฑเธ•เนเธเธกเธฑเธ•เธดเธซเธฒเธเน€เธเธฃเธทเนเธญเธเธเธนเนเนเธเนเธขเธฑเธเนเธกเนเธกเธตเนเธเธฅเน
    local function ensureAssetExists()
        if typeof(isfile) == "function" and typeof(writefile) == "function" then
            local fileExists = false
            pcall(function() fileExists = isfile(Config.IconPath) end)

            if not fileExists and Config.IconDownloadUrl and Config.IconDownloadUrl ~= "" then
                pcall(function()
                    if typeof(isfolder) == "function" and not isfolder("Icon name tag") then
                        pcall(makefolder, "Icon name tag")
                    end
                    local downloaded = game:HttpGet(Config.IconDownloadUrl)
                    if downloaded and #downloaded > 0 then
                        writefile(Config.IconPath, downloaded)
                    end
                end)
            end
        end
    end
    pcall(ensureAssetExists)

    -- 2. เน€เธเธฅเธตเธขเธฃเน Watermark เน€เธเนเธฒเธญเธญเธเธเนเธญเธ (เธเนเธญเธเธเธฑเธเธเธฒเธฃเธฃเธฑเธเธเนเธณเธเนเธญเธเธเธฒเธเธซเธฅเธฒเธขเธชเธเธฃเธดเธเธ•เน)
    if getgenv and getgenv()._AstrocynaWatermarkCleanup then
        pcall(getgenv()._AstrocynaWatermarkCleanup)
    end

    local ActiveTags = {}
    local Connections = {}

    -- เธเธฑเธเธเนเธเธฑเธเธ”เธถเธเธฃเธนเธเธ เธฒเธเธเธฒเธ Potassium / Executor workspace
    local function resolveAsset(path)
        if type(path) == "string" and (path:match("^rbxasset") or path:match("^http")) then
            return path
        end

        local customAssetFunc = getcustomasset or getsynasset
        if customAssetFunc then
            local s, res = pcall(customAssetFunc, path)
            if s and res then return res end

            local backslashPath = path:gsub("/", "\\")
            s, res = pcall(customAssetFunc, backslashPath)
            if s and res then return res end

            local forwardPath = path:gsub("\\", "/")
            s, res = pcall(customAssetFunc, forwardPath)
            if s and res then return res end
        end

        return ""
    end

    local ResolvedIconId = resolveAsset(Config.IconPath)

    -- เธเธฑเธเธเนเธเธฑเธเธ”เธถเธ Profile เธเธญเธเธเธนเนเน€เธฅเนเธ
    local function getProfileForPlayer(player)
        if player == LocalPlayer and Config.TargetMode == "LocalPlayer" then
            return Config.Self
        end
        if Config.CustomUsers[player.Name] then
            return Config.CustomUsers[player.Name]
        end
        if Config.TargetMode == "AllPlayers" then
            return Config.Self
        end
        return nil
    end

    -- เธเธฑเธเธเนเธเธฑเธเธชเธฃเนเธฒเธ Watermark Name Tag GUI
    local function createNameTag(character, profile, player)
        if not character then return end
        local head = character:WaitForChild("Head", 5)
        local humanoid = character:WaitForChild("Humanoid", 5)
        if not head or not humanoid then return end

        local existing = head:FindFirstChild("AstrocynaWatermarkGui")
        if existing then existing:Destroy() end

        if Config.Billboard.HideRobloxDefaultName then
            humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
        end

        local effects = profile.Effects or Config.Self.Effects or {}
        local borderAnim = profile.BorderAnimation or Config.Self.BorderAnimation or {}
        local textAnim = profile.TextAnimation or Config.Self.TextAnimation or {}

        -- BillboardGui
        local billboard = Instance.new("BillboardGui")
        billboard.Name = "AstrocynaWatermarkGui"
        billboard.Adornee = head
        billboard.Size = UDim2.new(0, 360, 0, 80)
        billboard.StudsOffset = Config.Billboard.StudsOffset
        billboard.AlwaysOnTop = Config.Billboard.AlwaysOnTop
        billboard.LightInfluence = 0
        billboard.MaxDistance = Config.Billboard.MaxDistance
        billboard.ResetOnSpawn = false
        billboard.ClipsDescendants = false

        -- Main Frame
        local mainFrame = Instance.new("Frame")
        mainFrame.Name = "MainFrame"
        mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
        mainFrame.BackgroundColor3 = profile.BackgroundColor or Config.Self.BackgroundColor
        mainFrame.BackgroundTransparency = profile.BackgroundTransparency or Config.Self.BackgroundTransparency
        mainFrame.BorderSizePixel = 0
        mainFrame.AutomaticSize = Enum.AutomaticSize.XY
        mainFrame.Size = UDim2.new(0, 0, 0, 0)
        mainFrame.Parent = billboard

        -- UIScale Dynamic Zoom Clamping
        local uiScale = Instance.new("UIScale")
        uiScale.Scale = 1.0
        uiScale.Parent = mainFrame

        if Config.Billboard.EnableDynamicScale then
            local cam = workspace.CurrentCamera
            local refDist = Config.Billboard.ReferenceDistance or 16
            local minS = Config.Billboard.MinScale or 0.48
            local maxS = Config.Billboard.MaxScale or 1.0

            local scaleConn = RunService.RenderStepped:Connect(function()
                if not head or not head.Parent or not billboard or not billboard.Parent then return end
                if cam then
                    local dist = (cam.CFrame.Position - head.Position).Magnitude
                    local calculatedScale = refDist / math.max(dist, 1)
                    uiScale.Scale = math.clamp(calculatedScale, minS, maxS)
                end
            end)
            table.insert(Connections, scaleConn)
        end

        -- Bevel Gradient เธเธเธเธฅเนเธญเธ HUD
        if effects.EnableGradient then
            local bgGradient = Instance.new("UIGradient")
            bgGradient.Rotation = 90
            bgGradient.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, effects.TopGradientColor or Color3.fromRGB(15, 36, 56)),
                ColorSequenceKeypoint.new(0.35, profile.BackgroundColor or Config.Self.BackgroundColor),
                ColorSequenceKeypoint.new(1, effects.BottomGradientColor or Color3.fromRGB(5, 10, 16))
            })
            bgGradient.Parent = mainFrame
        end

        mainFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
            if mainFrame and billboard then
                local sizeX = math.max(mainFrame.AbsoluteSize.X, 120)
                local sizeY = math.max(mainFrame.AbsoluteSize.Y, 50)
                billboard.Size = UDim2.new(0, sizeX + 30, 0, sizeY + 30)
            end
        end)

        local uiCorner = Instance.new("UICorner")
        uiCorner.CornerRadius = UDim.new(0, profile.CornerRadius or Config.Self.CornerRadius)
        uiCorner.Parent = mainFrame

        local uiStroke = Instance.new("UIStroke")
        uiStroke.Thickness = profile.BorderThickness or Config.Self.BorderThickness
        uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        uiStroke.Parent = mainFrame

        -- Border Animation (NeonSweep)
        if borderAnim.Enabled then
            uiStroke.Color = Color3.fromRGB(255, 255, 255)
            local strokeGradient = Instance.new("UIGradient")
            strokeGradient.Rotation = 0

            local baseC = borderAnim.BaseBorderColor or Color3.fromRGB(10, 45, 80)
            local beamC = borderAnim.BeamColor or Color3.fromRGB(0, 210, 255)
            local highC = borderAnim.HighlightColor or Color3.fromRGB(220, 250, 255)
            strokeGradient.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, baseC),
                ColorSequenceKeypoint.new(0.35, beamC),
                ColorSequenceKeypoint.new(0.5, highC),
                ColorSequenceKeypoint.new(0.65, beamC),
                ColorSequenceKeypoint.new(1, baseC)
            })
            strokeGradient.Parent = uiStroke

            local rotSpeed = borderAnim.RotationSpeed or 110
            local borderConn = RunService.RenderStepped:Connect(function(dt)
                if not strokeGradient or not strokeGradient.Parent or not billboard or not billboard.Parent then return end
                strokeGradient.Rotation = (strokeGradient.Rotation + dt * rotSpeed) % 360

                if borderAnim.PulseThickness then
                    local t = tick() * (borderAnim.PulseSpeed or 2.5)
                    local wave = (math.sin(t) + 1) / 2
                    local minT = borderAnim.MinThickness or 2.2
                    local maxT = borderAnim.MaxThickness or 3.2
                    uiStroke.Thickness = minT + (maxT - minT) * wave
                end
            end)
            table.insert(Connections, borderConn)
        else
            uiStroke.Color = profile.BorderColor or Config.Self.BorderColor
        end

        local uiPadding = Instance.new("UIPadding")
        local padH = profile.PaddingHorizontal or Config.Self.PaddingHorizontal or 18
        local padV = profile.PaddingVertical or Config.Self.PaddingVertical or 8
        uiPadding.PaddingTop = UDim.new(0, padV)
        uiPadding.PaddingBottom = UDim.new(0, padV)
        uiPadding.PaddingLeft = UDim.new(0, padH)
        uiPadding.PaddingRight = UDim.new(0, padH)
        uiPadding.Parent = mainFrame

        local listLayout = Instance.new("UIListLayout")
        listLayout.FillDirection = Enum.FillDirection.Horizontal
        listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        listLayout.VerticalAlignment = Enum.VerticalAlignment.Center
        listLayout.SortOrder = Enum.SortOrder.LayoutOrder
        listLayout.Padding = UDim.new(0, profile.Spacing or Config.Self.Spacing or 14)
        listLayout.Parent = mainFrame

        local iconDimensions = profile.IconSize or Config.Self.IconSize

        -- Left Icon
        if profile.ShowLeftIcon and ResolvedIconId ~= "" then
            local leftIcon = Instance.new("ImageLabel")
            leftIcon.Name = "LeftIcon"
            leftIcon.BackgroundTransparency = 1
            leftIcon.Size = UDim2.new(0, iconDimensions.X, 0, iconDimensions.Y)
            leftIcon.Image = ResolvedIconId
            leftIcon.ScaleType = Enum.ScaleType.Fit
            leftIcon.LayoutOrder = 1
            leftIcon.Parent = mainFrame
        end

        -- Text Container
        local textContainer = Instance.new("Frame")
        textContainer.Name = "TextContainer"
        textContainer.BackgroundTransparency = 1
        textContainer.BorderSizePixel = 0
        textContainer.AutomaticSize = Enum.AutomaticSize.XY
        textContainer.Size = UDim2.new(0, 0, 0, 0)
        textContainer.LayoutOrder = 2
        textContainer.Parent = mainFrame

        local textLayout = Instance.new("UIListLayout")
        textLayout.FillDirection = Enum.FillDirection.Vertical
        textLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        textLayout.VerticalAlignment = Enum.VerticalAlignment.Center
        textLayout.SortOrder = Enum.SortOrder.LayoutOrder
        textLayout.Padding = UDim.new(0, 2)
        textLayout.Parent = textContainer

        local displayNameText = profile.CustomName or "Astrocyna"
        local subtitleText
        if profile.UsePlayerDisplayName ~= false then
            subtitleText = player.DisplayName
        else
            subtitleText = profile.Subtitle or player.DisplayName
        end

        local shadowOffset = effects.TextShadowOffset or Vector2.new(2, 2)
        local shadowColor = effects.TextShadowColor or Color3.fromRGB(2, 6, 14)
        local shadowStart = effects.TextShadowStartAlpha or 0.15
        local shadowEnd = effects.TextShadowEndAlpha or 1.0

        -- 1. Name Container
        local nameContainer = Instance.new("Frame")
        nameContainer.Name = "NameContainer"
        nameContainer.BackgroundTransparency = 1
        nameContainer.BorderSizePixel = 0
        nameContainer.AutomaticSize = Enum.AutomaticSize.XY
        nameContainer.Size = UDim2.new(0, 0, 0, 0)
        nameContainer.LayoutOrder = 1
        nameContainer.Parent = textContainer

        if effects.EnableTextGradientShadow then
            local nameShadow = Instance.new("TextLabel")
            nameShadow.Name = "NameShadow"
            nameShadow.BackgroundTransparency = 1
            nameShadow.AutomaticSize = Enum.AutomaticSize.XY
            nameShadow.Size = UDim2.new(0, 0, 0, 0)
            nameShadow.Position = UDim2.new(0, shadowOffset.X, 0, shadowOffset.Y)
            nameShadow.Font = Enum.Font.GothamBold
            nameShadow.Text = displayNameText
            nameShadow.TextColor3 = shadowColor
            nameShadow.TextSize = profile.NameTextSize or Config.Self.NameTextSize or 22
            nameShadow.ZIndex = 1
            nameShadow.Parent = nameContainer

            local shadowGrad = Instance.new("UIGradient")
            shadowGrad.Rotation = 0
            shadowGrad.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, shadowStart),
                NumberSequenceKeypoint.new(0.55, (shadowStart + shadowEnd) / 2),
                NumberSequenceKeypoint.new(1, shadowEnd)
            })
            shadowGrad.Parent = nameShadow
        end

        local nameLabel = Instance.new("TextLabel")
        nameLabel.Name = "CustomName"
        nameLabel.BackgroundTransparency = 1
        nameLabel.AutomaticSize = Enum.AutomaticSize.XY
        nameLabel.Size = UDim2.new(0, 0, 0, 0)
        nameLabel.Position = UDim2.new(0, 0, 0, 0)
        nameLabel.Font = Enum.Font.GothamBold
        nameLabel.Text = displayNameText
        nameLabel.TextColor3 = profile.NameColor or Config.Self.NameColor
        nameLabel.TextSize = profile.NameTextSize or Config.Self.NameTextSize or 22
        nameLabel.ZIndex = 2
        nameLabel.Parent = nameContainer

        -- Text Shimmer Animation
        if textAnim.Enabled then
            local textGradient = Instance.new("UIGradient")
            textGradient.Name = "TextAnimationGradient"
            textGradient.Rotation = 20

            local baseC = profile.NameColor or Config.Self.NameColor
            local shineC = textAnim.ShimmerColor or Color3.fromRGB(255, 255, 255)
            local glowC = textAnim.GlowColor or Color3.fromRGB(120, 235, 255)

            textGradient.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, baseC),
                ColorSequenceKeypoint.new(0.35, glowC),
                ColorSequenceKeypoint.new(0.5, shineC),
                ColorSequenceKeypoint.new(0.65, glowC),
                ColorSequenceKeypoint.new(1, baseC)
            })
            textGradient.Parent = nameLabel

            local animSpeed = textAnim.Speed or 1.3
            local textConn = RunService.RenderStepped:Connect(function()
                if not textGradient or not textGradient.Parent or not billboard or not billboard.Parent then return end
                local cycle = (tick() * animSpeed) % 2.6
                if cycle <= 1.4 then
                    local prog = -1.2 + (cycle / 1.4) * 2.4
                    textGradient.Offset = Vector2.new(prog, 0)
                else
                    textGradient.Offset = Vector2.new(2, 0)
                end
            end)
            table.insert(Connections, textConn)
        end

        -- 2. Subtitle Container (DisplayName)
        if subtitleText and subtitleText ~= "" then
            local subtitleContainer = Instance.new("Frame")
            subtitleContainer.Name = "SubtitleContainer"
            subtitleContainer.BackgroundTransparency = 1
            subtitleContainer.BorderSizePixel = 0
            subtitleContainer.AutomaticSize = Enum.AutomaticSize.XY
            subtitleContainer.Size = UDim2.new(0, 0, 0, 0)
            subtitleContainer.LayoutOrder = 2
            subtitleContainer.Parent = textContainer

            if effects.EnableTextGradientShadow then
                local subtitleShadow = Instance.new("TextLabel")
                subtitleShadow.Name = "SubtitleShadow"
                subtitleShadow.BackgroundTransparency = 1
                subtitleShadow.AutomaticSize = Enum.AutomaticSize.XY
                subtitleShadow.Size = UDim2.new(0, 0, 0, 0)
                subtitleShadow.Position = UDim2.new(0, shadowOffset.X, 0, shadowOffset.Y)
                subtitleShadow.Font = Enum.Font.SourceSansItalic
                subtitleShadow.RichText = true
                subtitleShadow.Text = "<i>" .. subtitleText .. "</i>"
                subtitleShadow.TextColor3 = shadowColor
                subtitleShadow.TextSize = profile.SubtitleTextSize or Config.Self.SubtitleTextSize or 16
                subtitleShadow.ZIndex = 1
                subtitleShadow.Parent = subtitleContainer

                local subShadowGrad = Instance.new("UIGradient")
                subShadowGrad.Rotation = 0
                subShadowGrad.Transparency = NumberSequence.new({
                    NumberSequenceKeypoint.new(0, shadowStart),
                    NumberSequenceKeypoint.new(0.6, (shadowStart + shadowEnd) / 2),
                    NumberSequenceKeypoint.new(1, shadowEnd)
                })
                subShadowGrad.Parent = subtitleShadow
            end

            local subtitleLabel = Instance.new("TextLabel")
            subtitleLabel.Name = "Subtitle"
            subtitleLabel.BackgroundTransparency = 1
            subtitleLabel.AutomaticSize = Enum.AutomaticSize.XY
            subtitleLabel.Size = UDim2.new(0, 0, 0, 0)
            subtitleLabel.Position = UDim2.new(0, 0, 0, 0)
            subtitleLabel.Font = Enum.Font.SourceSansItalic
            subtitleLabel.RichText = true
            subtitleLabel.Text = "<i>" .. subtitleText .. "</i>"
            subtitleLabel.TextColor3 = profile.SubtitleColor or Config.Self.SubtitleColor
            subtitleLabel.TextSize = profile.SubtitleTextSize or Config.Self.SubtitleTextSize or 16
            subtitleLabel.ZIndex = 2
            subtitleLabel.Parent = subtitleContainer
        end

        -- Right Icon
        if profile.ShowRightIcon and ResolvedIconId ~= "" then
            local rightIcon = Instance.new("ImageLabel")
            rightIcon.Name = "RightIcon"
            rightIcon.BackgroundTransparency = 1
            rightIcon.Size = UDim2.new(0, iconDimensions.X, 0, iconDimensions.Y)
            rightIcon.Image = ResolvedIconId
            rightIcon.ScaleType = Enum.ScaleType.Fit
            rightIcon.LayoutOrder = 3
            rightIcon.Parent = mainFrame
        end

        billboard.Parent = head
        table.insert(ActiveTags, billboard)
    end

    -- เธเธฑเธเธเนเธเธฑเธเธเธนเธเน€เธเนเธฒเธเธฑเธเธ•เธฑเธงเธฅเธฐเธเธฃ
    local function attachToPlayer(player)
        local profile = getProfileForPlayer(player)
        if not profile then return end

        if player.Character then
            task.spawn(createNameTag, player.Character, profile, player)
        end

        local conn = player.CharacterAdded:Connect(function(char)
            task.wait(0.2)
            createNameTag(char, profile, player)
        end)

        return conn
    end

    if Config.TargetMode == "LocalPlayer" then
        local c = attachToPlayer(LocalPlayer)
        if c then table.insert(Connections, c) end
    else
        for _, p in ipairs(Players:GetPlayers()) do
            local c = attachToPlayer(p)
            if c then table.insert(Connections, c) end
        end

        local playerAddedConn = Players.PlayerAdded:Connect(function(p)
            local c = attachToPlayer(p)
            if c then table.insert(Connections, c) end
        end)
        table.insert(Connections, playerAddedConn)
    end

    local function cleanup()
        for _, conn in ipairs(Connections) do
            pcall(function() conn:Disconnect() end)
        end
        for _, tag in ipairs(ActiveTags) do
            if tag and tag.Parent then
                pcall(function() tag:Destroy() end)
            end
        end
        table.clear(Connections)
        table.clear(ActiveTags)
    end

    if getgenv then
        getgenv()._AstrocynaWatermarkCleanup = cleanup
    end

    print([=[
    =======================================================
       ๐ ASTROCYNA WATERMARK LOADED SUCCESSFULLY!
       Developer / Studio: Astrocyna
       User: ]=] .. tostring(LocalPlayer.Name) .. " (" .. tostring(LocalPlayer.DisplayName) .. [=[)
    =======================================================
    ]=])
end)

return true

