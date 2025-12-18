-- Load Rayfield
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- Create Rayfield Window
local Window = Rayfield:CreateWindow({
    Name = "Yuki Hub",
    LoadingTitle = "Yuki Hub",
    LoadingSubtitle = "Automation",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "BeastHub",
        FileName = "AutomationUI"
    },
    Discord = {
        Enabled = false
    },
    KeySystem = false
})

-- Notification function
local function beastHubNotify(title, content, duration)
    Rayfield:Notify({
        Title = title or "Yuki Hub",
        Content = content or "",
        Duration = duration or 3
    })
end

-- Dummy helper functions (replace later)
local myFunctions = {}
local function equipItemByName() end
local function equipItemByNameV2() end
local function getMyFarm() end
local function getFarmSpawnCFrame() return CFrame.new() end
local function getAllPetNames() return {} end
local function sendDiscordWebhook() end

-- Require your module
local AutomationModule = require(script:WaitForChild("AutomationModule"))

-- Initialize module
AutomationModule.init(
    Rayfield,
    WebhookNotify,
    Window,
    myFunctions,
    "bot",
    equipItemByName,
    equipItemByNameV2,
    getMyFarm,
    getFarmSpawnCFrame,
    getAllPetNames,
    sendDiscordWebhook
)
