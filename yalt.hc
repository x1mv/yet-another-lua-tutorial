local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Yet Another LUA Tutorial", HidePremium = true, IntroEnabled = false})

local function notify(text, content)
    OrionLib:MakeNotification({
	Name = text,
	Content = content,
	Image = "rbxassetid://4483345998",
	Time = 5
})
end

notify("Y.A.L.T", "Yet Another LUA Tutorial")

local p = Window:MakeTab({
	Name = "Printing",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

p:AddButton({
	Name = "Hello World!",
	Callback = function()
      		print("Hello World!")
      		notify("Done!", "Please check your console.")
  	end    
})

local v = Window:MakeTab({
	Name = "Variables",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

v:AddButton({
	Name = "Basic Variables",
	Callback = function()
	    notify("Done!", "Please check your console.")
	    local hello = "Hello World!"
      		print(hello)
  	end    
})

v:AddButton({
	Name = "Multiple Variables",
	Callback = function()
	    notify("Done!", "Please check your console.")
        local hello = "Hello"
        local world = "World"
        local exclamation = "!"

        print(hello, world .. exclamation)
  	end    
})

local m = Window:MakeTab({
	Name = "Meth",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

m:AddButton({
	Name = "Remove 1 Apple",
	Callback = function()
	    notify("Done!", "Please check your console.")
        print(1 - 1)
  	end    
})

m:AddButton({
	Name = "Add 1 Apple",
	Callback = function()
	    notify("Done!", "Please check your console.")
        print(1 + 1)
  	end    
})

local p = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

p:AddButton({
	Name = "Print Name",
	Callback = function()
	    notify("Done!", "Please check your console.")
        local player = game.Players.LocalPlayer

        print(player)
  	end    
})

p:AddButton({
	Name = "Print Display Name",
	Callback = function()
	    notify("Done!", "Please check your console.")
        local player = game.Players.LocalPlayer.DisplayName

        print(player)
  	end    
})
