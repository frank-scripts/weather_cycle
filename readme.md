Weather Cycling Script for FiveM


Introduction 🌤️❄️☀️

I created this weather cycling script because I noticed something missing in the FiveM scripting community:
a weather system that cycles dynamically between snow, blizzard, and other weather types!
Sure, there are plenty of weather-control resources, but none that seamlessly cycle through winter and clear weather conditions
in an engaging and server-friendly way.


This script is not only simple to set up but also highly customizable. It overrides resources like qb-weather, ensuring your custom weather cycle runs uninterrupted. While using this script, direct weather changes from other resources like qb-weather will no longer work, giving you full control over your server’s environment. 🌟

Features 🚀


Dynamic Weather Cycling: Automatically cycles between snow, blizzard, and other weather conditions.
Customizable Intervals: Easily adjust how often the weather changes.
Lightweight and Efficient: Runs smoothly on any FiveM server.
Permission Control: Add ACE permissions to allow admins to override weather conditions manually.
Framework Agnostic: Works regardless of your server's framework (ESX, QBCore, or standalone).
How It Works 🛠️
The script includes a server-side loop that cycles through a predefined list of weather types (XMAS, BLIZZARD, SNOW, etc.). It uses FiveM’s native weather-setting functions to ensure weather syncs across all players. A client-side script handles smooth transitions between weather types for a polished user experience.


Support & Feedback 💬


If you love this script and want to see more or need help customizing it, feel free to reach out! 
Also, don’t forget to check out @priimecast382 on Discord for expert-level coding and custom FiveM solutions. 
Also check out our discord for more support! https://discord.gg/qgmjR7QkCg



Key Components:


Server-Side Script (weather_cycle.lua):


Defines the weather types.
Handles the weather cycling logic with a timed loop.
Sends weather updates to all connected clients.


Client-Side Script (client.lua):


Receives the weather type from the server.
Applies the weather change smoothly using FiveM natives.
Permission System (Optional):


ACE permissions can be configured to allow admins to manually override the weather.


Installation 📥


Download and Extract:

Place the script in your FiveM server's resources folder under a directory named weather_cycle.
Add to server.cfg:

ensure weather_cycle
Grant Permissions (Optional): To allow specific groups to override weather, add the following to your server.cfg:


add_ace group.admin command.weather allow



Enjoy the Dynamic Weather!


Customization 🔧


Adjusting Weather Types
Want to add or remove weather conditions? Edit the weatherCycle array in weather_cycle.lua:


local weatherCycle = {
    "XMAS",
    "BLIZZARD",
    "SNOWLIGHT",
    "SNOW",
    "SMOG",
    "CLEAR",
    "NEUTRAL",
    "EXTRASUNNY"
}


Replace or rearrange weather types based on your preferences. Available options include:


CLEAR


CLOUDS


SMOG


FOGGY


OVERCAST


RAIN


THUNDER


SNOW


SNOWLIGHT


XMAS


Adjusting Weather Change Interval
To change how often the weather cycles, edit the weatherChangeInterval value in milliseconds:


local weatherChangeInterval = 300000 -- 5 minutes


For example:


1 minute: 60000
10 minutes: 600000


Granting Weather Override Permissions

If you want specific players or groups to manually set the weather, configure ACE permissions in your server.cfg:


add_ace group.admin command.weather allow


Code Breakdown  🧩


weather_cycle.lua (Server-Side)

local weatherCycle = { "XMAS", "BLIZZARD", "SNOWLIGHT", "SNOW", "SMOG", "CLEAR", "NEUTRAL", "EXTRASUNNY" }
local currentWeatherIndex = 1
local weatherChangeInterval = 300000 -- Change every 5 minutes


Why Use This Script? 🤔


This script is perfect for any FiveM server looking to add dynamic weather cycling with minimal setup. Whether you want a snowy winter theme or varied weather for roleplay, this resource gives you control without hassle. Plus, its lightweight design ensures compatibility with any server framework.


Support & Feedback 💬


If you love this script and want to see more or need help customizing it, feel free to reach out! 
Also, don’t forget to check out @priimecast382 on Discord for expert-level coding and custom FiveM solutions. 
Also check out our discord for more support! https://discord.gg/qgmjR7QkCg
