local silp = "Rama102031" or "AldiUnyumlk"

-- // Functions // --
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

local Asset = MarketplaceService:GetProductInfo(PlaceId)

local Players = game:GetService("Players")

local Player = game.Players.LocalPlayer
local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)

local function getexploit()
  local exploit =
      (syn and not is_sirhurt_closure and not pebc_execute and "Synapse") or
      (secure_load and "Sentinel") or
      (is_sirhurt_closure and "Sirhurt") or
      (pebc_execute and "ProtoSmasher") or
      (KRNL_LOADED and "Krnl") or
      (WrapGlobal and "WeAreDevs") or
      (isvm and "Proxo") or
      (shadow_env and "Shadow") or
      (jit and "EasyExploits") or
      (getscriptenvs and "Calamari") or
      (unit and not syn and "Unit") or
      (OXYGEN_LOADED and "Oxygen U") or
      (IsElectron and "Electron") or
      ("Unsupported")

  return exploit
end

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/RamaTheDL/Library/main/ArrayField/Library/Source.lua'))()

if Player.Name == silp then
  if syn then
	-- // Library // --
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/RamaTheDL/Library/main/ArrayField/Library/Source.lua'))()

local Window = Rayfield:CreateWindow({
   Name = "GuestUI",
   LoadingTitle = "GuestUI | Delta",
   LoadingSubtitle = "Loading..",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = "MyGUi", -- Create a custom folder for your hub/game
      FileName = "Ded Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "sirius", -- The Discord invite code, do not include discord.gg/
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key System",
      Subtitle = "Plugins | Delta",
      Note = "Nothing to say:v",
      FileName = "PLKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "ForMe"
   }
})
wait(3)
Rayfield:Notify({
	Title = "Notification!",
	Content = "Loading...",
	Duration = 6.5,
	Image = 7733911828,
	Actions = {
		Ignore = {
			Name = "Ok!",
			Callback = function()
				-- Yes
			end
		},
	},
})
wait(2)
Rayfield:Notify({
	Title = "Notification!",
	Content = "Hello, ".. Player.Name .." Welcome To GuestUI.",
	Duration = 6.5,
	Image = 7733911828,
	Actions = {
		Ignore = {
			Name = "Ok!",
			Callback = function()
				-- Yes
			end
		},
	},
})

-- / Tab / --
local Tab1 = Window:CreateTab("Home", 7733960981)
local Tab2 = Window:CreateTab("Plugins", 7733911621)
local Tab3 = Window:CreateTab("Games", 7733799901)
local Tab4 = Window:CreateTab("Script", 8997387937)
local Tab5 = Window:CreateTab("Feedback", 7733978098)
local Tab6 = Window:CreateTab("Credits", 7733765398)

-- // Tab 1 | Home // --
local Section1 = Tab1:CreateSection("For You:",false)
local Paragraph = Tab1:CreateParagraph({Title = "Explanation", Content = "This script is only for Delta Executor"},Section1)
local Button = Tab1:CreateButton({
   Name = "Infinite Yield FE",
   Info = "",
   Interact = '⬜',
   Callback = function()
   loadstring(game:HttpGet("https://scriptblox.com/raw/Infinite-Yield_500"))()
   end,
})
local Label = Tab1:CreateLabel("Time: " .. os.date("%d/%m/%y"))

-- / Changelogs / --
local SectionA = Tab1:CreateSection("Changelogs:",false)
local Paragraph = Tab1:CreateParagraph({Title = "Version: 0.2 Beta", Content = "Added 1 Plugins."},SectionA)
local Paragraph = Tab1:CreateParagraph({Title = "Version: 0.1", Content = "Script Release!"},SectionA)



-- // Tab 2 | Plugins // --
local Section2 = Tab2:CreateSection("Explanation",false)
local Paragraph = Tab2:CreateParagraph({Title = "What is Plugin roblox?", Content = "an extension that adds additional features or functionality for script"},Section2)
local Button = Tab2:CreateButton({
   Name = "Character-v1",
   Info = "",
   Interact = '⬜',
   Callback = function()
   
delta.Settings:AddSwitch("Infinite Jump", "Allows your Character to make more than one Jump.", false, function(state)
  _G.IJUMP = state

local InfiniteJumpEnabled = _G.IJUMP
        game:GetService("UserInputService").JumpRequest:connect(function()
            if _G.IJUMP then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
end
  end)
end)

delta.Settings:AddInput("WalkSpeed", "Change your Walkspeed.", function(text)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = text
end)

delta.Settings:AddInput("JumpPower", "Change your JumpPower.", function(text)
  game.Players.LocalPlayer.Character.Humanoid.JumpPower = text
end)

delta.Settings:AddInput("Health", "Change your Character Health.", function(text)
  game.Players.LocalPlayer.Character.Humanoid.Health = text
end)

delta.Settings:AddInput("MaxHealth", "Change Your Character MaxHealth.", function(text)
  game.Players.LocalPlayer.Character.Humanoid.MaxHealth = text
end)

delta.Settings:AddSwitch("Sit[Spam]", "Make your Character to Sit.", false, function(state)
  _G.Seta = state
  while _G.Seta do
    wait(0.1)
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
  end
end)

delta.Settings:AddSwitch("Jump[Spam]", "Make your Character to Jumping(Spamming).", false, function(state)
  _G.Jampe = state
  while _G.Jampe do
       wait(0.1)
       game.Players.LocalPlayer.Character.Humanoid.Jump = true
  end
end)
   end,
})

-- // Tab 3 | Game // --
local Section = Tab3:CreateSection("–A",true)

local Section = Tab3:CreateSection("–B",true)
local Button = Tab3:CreateButton({
   Name = "Blade Ball[Bedol Hub]",
   Info = "",
   Interact = '⬜',
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()
   end,
})

local Section = Tab3:CreateSection("–C",true)

local Section = Tab3:CreateSection("–D",true)

local Section = Tab3:CreateSection("–E",true)

local Section = Tab3:CreateSection("–F",true)

local Section = Tab3:CreateSection("–G",true)

local Section = Tab3:CreateSection("–H",true)

local Section = Tab3:CreateSection("–I",true)

local Section = Tab3:CreateSection("–J",true)

local Section = Tab3:CreateSection("–K",true)

local Section = Tab3:CreateSection("–L",true)

local Section = Tab3:CreateSection("–M",true)

local Section = Tab3:CreateSection("–N",true)

local Section = Tab3:CreateSection("–O",true)

local Section = Tab3:CreateSection("–P",true)

local Section = Tab3:CreateSection("–Q",true)

local Section = Tab3:CreateSection("–R",true)

local Section = Tab3:CreateSection("–S",true)

local Section = Tab3:CreateSection("–T",true)

local Section = Tab3:CreateSection("–U",true)

local Section = Tab3:CreateSection("–V",true)

local Section = Tab3:CreateSection("–W",true)

local Section = Tab3:CreateSection("–X",true)

local Section = Tab3:CreateSection("–Y",true)

local Section = Tab3:CreateSection("–Z",true)

-- // Tab 5 | Feedback // --
local Section5 = Tab5:CreateSection("",false)
local Paragraph = Tab5:CreateParagraph({Title = "Important!", Content = "If you want to send Message, make sure you send important message and do not try troll us! or you will get BLACKLISTED."},Section5)

local Input = Tab5:CreateInput({
   Name = "Feedback:",
   Info = "", -- Speaks for itself, Remove if none.
   PlaceholderText = "",
   NumbersOnly = false, -- If the user can only type numbers. Remove if none.
   CharacterLimit = 500, --max character limit. Remove if none.
   OnEnter = false, -- Will callback only if the user pressed ENTER while the box is focused.
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
   _G.SmSw = Text
   end,
})
	
local Button = Tab5:CreateButton({
   Name = "Send",
   Info = "",
   Interact = '⬜',
   Callback = function()
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
    -- Function
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
                ["description"] = embed.description,
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
    print("Player send feedback")
end


--Examples 

local url = "https://discord.com/api/webhooks/1163436763331706932/2Qk2Mw1VaJj9fb8PqYqNk1l_ZuB3kWMmyHvNxxO4y_h0TuH1ldPU3O2_lOuFTQLn0EeD"
SendMessage(url, "")


local embed = {
    ["title"] = "– Notification!",
    ["description"] = "- Message From ".. Player.Name,
    ["color"] = ffffff,
    ["fields"] = {
    	{
            ["name"] = "Time:",
            ["value"] = "- ".. os.date("%d/%m/%y - %H:%M:%S %p")
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
            ["value"] = "- ".. game.JobId,
            ["inline"] = false
        },
        {
            ["name"] = "Message:",
            ["value"] = "```".. _G.SmSw .."```",
            ["inline"] = false
        }
    },
    ["footer"] = {
        ["text"] = "Credit: Rama102031"
    }
}
SendMessageEMBED(url, embed)
Rayfield:Notify({
	Title = "Notification!",
	Content = "Succesfully send to Owner!",
	Duration = 6.5,
	Image = 7733911828,
	Actions = { -- Notification Buttons
		Ignore = {
			Name = "Ok!",
			Callback = function()
				-- Yes
			end
		},
	},
})
   end,
})

local Section6 = Tab6:CreateSection("Credits:",false)
local Paragraph = Tab6:CreateParagraph({Title = "—Original Sources:", Content = [[
• Rayfield
]]})

local Paragraph = Tab6:CreateParagraph({Title = "–Developers:", Content = [[
• Website designer : Rama102031#6275 | Sirius & Rayfield Dev: shlex#9425 | Developers: iRay#1488 & Metas
]]})
local Paragraph = Tab6:CreateParagraph({Title = "—Helpers:", Content = [[
• alyssa | JustHey | !vma | Toon | Rafa
]]})



else
	-- // Functions // --
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

-- // Library // --
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/RamaTheDL/Library/main/Library/ArrayField/Source.lua'))()

local Window = Rayfield:CreateWindow({
   Name = "Unknow | Locked",
   LoadingTitle = "Unknow | Unknow ",
   LoadingSubtitle = "",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = "MyGUi", -- Create a custom folder for your hub/game
      FileName = "Ded Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "sirius", -- The Discord invite code, do not include discord.gg/
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key System",
      Subtitle = "Plugins | Delta",
      Note = "Nothing to say:v",
      FileName = "PLKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "ForMe"
   }
})

-- / Tab / --
local Tab1 = Window:CreateTab("Locked", 7733992528)
local Tab2 = Window:CreateTab("Locked", 7733992528)
local Tab3 = Window:CreateTab("Locked", 7733992528)
local Tab4 = Window:CreateTab("Locked", 7733992528)
local Tab5 = Window:CreateTab("Locked", 7733992528)

Rayfield:Notify({
	Title = "Notification!",
	Content = "Your Exploit Doesnt Support This Script",
	Duration = 6.5,
	Image = 7733911828,
	Actions = { -- Notification Buttons
		Ignore = {
			Name = "Leave:P",
			Callback = function()
				game:Shutdown()
			end
		},
	},
})
  end
end
