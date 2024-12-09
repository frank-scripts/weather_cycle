local currentWeather = "XMAS"

RegisterNetEvent('weather:updateWeather', function(weatherType)
    currentWeather = weatherType
end)

Citizen.CreateThread(function()
    while true do
        -- Enforce the current weather
        SetWeatherTypePersist(currentWeather)
        SetWeatherTypeNowPersist(currentWeather)
        SetWeatherTypeNow(currentWeather)
        SetOverrideWeather(currentWeather)
        Citizen.Wait(1) -- Continuously enforce the weather
    end
end)
