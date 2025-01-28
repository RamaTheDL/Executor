-- Wait until the game is loaded
wait()

-- // Services // --
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")

-- // Variables // --
local player = Players.LocalPlayer
local Asset = MarketplaceService:GetProductInfo(game.PlaceId)

-- Utility functions for hidden properties (if supported by the executor)
local sethidden = sethiddenproperty or set_hidden_property or set_hidden_prop
local gethidden = gethiddenproperty or get_hidden_property or get_hidden_prop

-- Teleport queue function (if supported by the executor)
local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

-- HTTP request function (if supported by the executor)
local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

-- // Ensure HttpService is used for JSON decoding // --
if not HttpService then
    warn("HttpService is not available.")
    return
end

-- // Get UniverseId // --
local success, universeData = pcall(function()
    local response = httprequest({
        Url = "https://apis.roblox.com/universes/v1/places/" .. tostring(game.PlaceId) .. "/universe",
        Method = "GET"
    })
    return HttpService:JSONDecode(response.Body)
end)

if not success then
    warn("Failed to fetch UniverseId:", universeData)
    return
end

-- Extract the UniverseId
local resultUniverseId
for key, value in pairs(universeData) do
    if type(value) == "table" then
        print(table.concat(value, " "))
    else
        resultUniverseId = tostring(value)
    end
end

if not resultUniverseId then
    warn("Failed to retrieve ResultUniverseId.")
    return
end

-- // Get Thumbnail URL // --
local success2, thumbnailData = pcall(function()
    local response = httprequest({
        Url = "https://thumbnails.roblox.com/v1/games/multiget/thumbnails?universeIds=" .. resultUniverseId .. "&countPerUniverse=1&defaults=false&size=768x432&format=Png&isCircular=false",
        Method = "GET"
    })
    return HttpService:JSONDecode(response.Body)
end)

if not success2 then
    warn("Failed to fetch thumbnail data:", thumbnailData)
    return
end

-- Print the thumbnail information
if thumbnailData and thumbnailData.data then
    for i, v in ipairs(thumbnailData.data) do
		if v.thumbnails then
			for j, w in ipairs(v.thumbnails) do
				if typeof(w) == "table" then
					print(table.concat(w, ", "))
				else
					print(tostring(w))
				end
			end
        end
    end
else
    warn("No thumbnail data found.")
end

local FinalData = {
	["embeds"] = {{
		-- ["thumbnail"] = {["url"] = ImageNya},
		["title"] = "-- // Game History // --",
		["color"] = tonumber(0xFFFFFF),
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
	}},
}
    
-- // Webhook // --
local response = request({
	Url = "https://webhook.lewisakura.moe/api/webhooks/1203835442051678228/i36UA_ZuhEy6CskqtIHQIxBd89tGDr-TIzocnKJGqfYrL0yn8BbyyXnT72d8ovvhzaWz/queue",
	Method = "POST",
	Headers = {
		["Content-Type"] = "application/json"
	},
	Body = HttpService:JSONEncode(FinalData)
})
