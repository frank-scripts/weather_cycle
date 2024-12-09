local weatherCycle = {
    "XMAS",
    "BLIZZARD",
    "SNOWLIGHT",
    "SNOW",
    "SMOG",
    "NEUTRAL"
}

local currentWeatherIndex = 1
local weatherChangeInterval = 300000 -- Change every 5 minutes (in milliseconds)

Citizen.CreateThread(function()
    while true do
        local weatherType = weatherCycle[currentWeatherIndex]

        -- Notify all players about the new weather type
        TriggerClientEvent('weather:updateWeather', -1, weatherType)
        print(("Weather changed to: %s"):format(weatherType)) -- Debugging log

        -- Advance to the next weather
        currentWeatherIndex = (currentWeatherIndex % #weatherCycle) + 1

        -- Wait before cycling to the next weather
        Citizen.Wait(weatherChangeInterval)
    end
end)
