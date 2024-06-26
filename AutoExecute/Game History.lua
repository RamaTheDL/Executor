wait(2)
-- // Function // --
UserInputService = game:GetService("UserInputService")
TweenService = game:GetService("TweenService")
HttpService = game:GetService("HttpService")
MarketplaceService = game:GetService("MarketplaceService")
RunService = game:GetService("RunService")
TeleportService = game:GetService("TeleportService")
NetworkClient = game:GetService("NetworkClient")
ReplicatedStorage = game:GetService("ReplicatedStorage")
StarterPlayer = game:GetService("StarterPlayer")
InsertService = game:GetService("InsertService")
ChatService = game:GetService("Chat")
ProximityPromptService = game:GetService("ProximityPromptService")
StatsService = game:GetService("Stats")
MaterialService = game:GetService("MaterialService")

sethidden = sethiddenproperty or set_hidden_property or set_hidden_prop
gethidden = gethiddenproperty or get_hidden_property or get_hidden_prop
queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
PlaceId, JobId = game.PlaceId, game.JobId
local IsOnMobile = table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform())

local Asset = MarketplaceService:GetProductInfo(PlaceId)

local Players = game:GetService("Players")

local Player = game.Players.LocalPlayer
local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/RamaTheDL/Library/main/Orion/Library/Source.lua')))()
	
OrionLib:MakeNotification({
	Name = "Notification!",
	Content = "Succesfully saved to logs!",
	Image = "rbxassetid://7733911828",
	Time = 7
})

-- print(os.date("%d/%m/%y - %H:%M:%S %p"))

-- // Webhook // --

function SendMessage(url, message)
    local http = game:GetService("HttpService")
    local headers = {
        ["Content-Type"] = "application/json"
    }
    local data = {
        ["content"] = message
    }
    local body = http:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
    print("SUCCCCCCCCCCCKKKKKKKKEEEEEEEEEEEEESSSSSSSSSSSSSSS")
end

function SendMessageEMBED(url, embed)
    local http = game:GetService("HttpService")
    local headers = {
        ["Content-Type"] = "application/json"
    }
    local data = {
        ["embeds"] = {
            {
                ["title"] = embed.title,
                ["color"] = embed.color,
                ["fields"] = embed.fields,
                ["footer"] = {
                    ["text"] = embed.footer.text
                }
            }
        }
    }
    local body = http:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
    print("yesssssssssssssssssss")
end


--Examples 

local url = "https://webhook.lewisakura.moe/api/webhooks/1203835442051678228/i36UA_ZuhEy6CskqtIHQIxBd89tGDr-TIzocnKJGqfYrL0yn8BbyyXnT72d8ovvhzaWz/queue"
SendMessage(url, "")


local embed = {
    ["title"] = "-- // Game History // --",
    ["color"] = 000000,
    ["fields"] = {
    	{
            ["name"] = "Time:",
            ["value"] = os.date("%d/%m/%y - %H:%M:%S %p")
        },
        {
            ["name"] = "User-Name:",
            ["value"] = ("- ".. Player.Name)
        },
        {
            ["name"] = "Place:",
            ["value"] = "- " .. Asset.Name,
            ["inline"] = false 
        },
        {
            ["name"] = "Job-Id:",
            ["value"] = game.JobId,
            ["inline"] = false
        }
    },
    ["footer"] = {
        ["text"] = "Credit: Rama102031"
    }
}
SendMessageEMBED(url, embed)
