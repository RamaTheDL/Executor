local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Dev Toolkit", IntroEnabled = true, IntroText = "Toolkit", HidePremium = true, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Game",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

OrionLib:MakeNotification({
	Name = "Info",
	Content = "This script has main stuff you need for scripting",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local Section = Tab:AddSection({
	Name = "Remotes"
})

Tab:AddButton({
	Name = "Simple Spy",
	Callback = function()
    loadstring(game:HttpGet("https://paste.ee/r/5aanl", true))()
end    
})
Tab:AddButton({
	Name = "Hydroxide",
	Callback = function()
    local owner = "Upbolt" local branch = "revision" local function webImport(file) return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')() end webImport("init") webImport("ui/main")
end    
})
Tab:AddButton({
	Name = "Mr. Spy",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/7JKhfPp6", true))()
end    
})

local Section = Tab:AddSection({
	Name = "Explorer"
})

Tab:AddButton({
	Name = "Dark Dex V1",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrTrustLumber/Roblox-Scripts/master/Dark%20Dex%20V1", true))()
end    
})
Tab:AddButton({
	Name = "Dark Dex V2",
	Callback = function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer%20V2.txt", true))()
end    
})
Tab:AddButton({
	Name = "Dark Dex V3 Bypassed",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end    
})
Tab:AddButton({
	Name = "Dark Dex V4",
	Callback = function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/joe22-cool/eb02c03c22ffc3c1301d30da07b0a7d0/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4", true))()
end    
})

local Tab = Window:MakeTab({
	Name = "UI Libraries",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({ Name = "Orion UI (This One)", Callback = function() setclipboard("https://github.com/darkkcontrol/Roblox-Orion-UI-Libary-OP-UI-LIBARY-/blob/main/Documentation.md") end})
Tab:AddButton({ Name = "RayField UI (Orion UI but newer)", Callback = function() setclipboard("https://rayfield.dev/en/introduction") end})
Tab:AddButton({ Name = "Wally UI V3 (The one I use)", Callback = function() setclipboard("https://github.com/bloodball/UI-Librarys/blob/main/Wally%20UI%20v3") end})
Tab:AddButton({ Name = "Ocerium UI", Callback = function() setclipboard("https://v3rmillion.net/showthread.php?tid=1167106") end})
Tab:AddButton({ Name = "Cool UI", Callback = function() setclipboard("https://v3rmillion.net/showthread.php?tid=1151036") end})
Tab:AddButton({ Name = "Blek UI", Callback = function() setclipboard("https://github.com/laderite/bleklib/blob/main/README.md") end})
Tab:AddButton({ Name = "Mercury UI", Callback = function() setclipboard("https://github.com/deeeity/mercury-lib") end})
Tab:AddButton({ Name = "Discord UI", Callback = function() setclipboard("https://github.com/bloodball/UI-Librarys/blob/main/Discord%20Lib") end})
Tab:AddButton({ Name = "Kavo UI", Callback = function() setclipboard("https://xheptcofficial.gitbook.io/kavo-library/") end})
Tab:AddButton({ Name = "Venyx UI", Callback = function() setclipboard("https://v3rmillion.net/showthread.php?tid=1026479") end})
Tab:AddButton({ Name = "Solaris UI", Callback = function() setclipboard("https://v3rmillion.net/showthread.php?tid=1142474") end})
Tab:AddButton({ Name = "Slixx's UI", Callback = function() setclipboard("https://slixx.gitbook.io/untitled/") end})
Tab:AddButton({ Name = "Linoria UI", Callback = function() setclipboard("https://github.com/violin-suzutsuki/LinoriaLib/blob/main/Example.lua") end})
Tab:AddButton({ Name = "Pepsi's UI UI", Callback = function() setclipboard("https://v3rmillion.net/showthread.php?tid=1139856") end})
Tab:AddButton({ Name = "Flux UI", Callback = function() setclipboard("https://v3rmillion.net/showthread.php?tid=1101621") end})
Tab:AddButton({ Name = "robloxscripts.com UI", Callback = function() setclipboard("https://v3rmillion.net/showthread.php?tid=1112691") end})

local Tab = Window:MakeTab({
	Name = "Develop Packs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Developing Pack (IY FE, DEX V3, SIMPLESPY)",
	Callback = function()
wait(0.5)
loadstring(game:HttpGet("https://paste.ee/r/5aanl", true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
wait(1)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "Changelogs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Changelogs"
})

Tab:AddParagraph("V0.1","Project Dev Toolkit Created")
Tab:AddParagraph("V0.2","Lets be honest, nobody used it because it was useless, this time you will want to use it.")

OrionLib:Init()
