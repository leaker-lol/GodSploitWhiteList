repeat task.wait() until game:IsLoaded()

local MainScriptLoadstring = "https://raw.githubusercontent.com/AfgMS/GodSploitWhiteList/main/GodSploitSex.lua"
local SecurityLoadstring = "https://raw.githubusercontent.com/AlSploit/GodSploit/main/Security"

local function InitMainScript()
	task.spawn(function()
		loadstring(game:HttpGet(MainScriptLoadstring))()
	end)	
end

local function InitSecurity()
	task.spawn(function()
		loadstring(game:HttpGet(SecurityLoadstring))()
	end)
end


task.spawn(function()
	task.spawn(function()
		InitSecurity()
	end)

	task.wait()

	task.spawn(function()
		InitMainScript()
	end)
end)
