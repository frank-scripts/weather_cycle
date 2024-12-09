--[[
	background_blue
	background_darkblue
	background_darkerblue
	background_darkgreen
	background_green
	background_other
	background_pink
	background_red
	background_yellow
]]

local background = "background_blue"
local opacity = 100

CreateThread(function()
    RequestStreamedTextureDict("am_pause", true)
    while not HasStreamedTextureDictLoaded("am_pause") do
        Wait(100)
    end
    while true do
        if IsPauseMenuActive() then
            SetScriptGfxDrawBehindPausemenu(true)
            DrawSprite("am_pause", background, 0.5, 0.5, 10.0, 10.0, 0, 255, 255, 255, opacity)
        else
            SetStreamedTextureDictAsNoLongerNeeded("am_pause")
        end
      	Wait(0)
    end
end)

