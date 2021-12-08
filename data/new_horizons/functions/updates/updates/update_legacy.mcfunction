# Handles updates from legacy versions (0.2.0-alpha)

# Cleans up objectives which are no longer used
scoreboard objectives remove nh_boolCheckTrue
scoreboard objectives remove nh_boolCheckFalse

scoreboard objectives remove nh_healthRegenCount
scoreboard objectives remove nh_healthRegenMaxCount
scoreboard objectives remove nh_minimumHungerForRegen
scoreboard objectives remove nh_currentHunger
scoreboard objectives remove nh_currentHealth

# Inits version info for further updates
scoreboard objectives add nh_version_major dummy
scoreboard objectives add nh_version_minor dummy
scoreboard objectives add nh_version_patch dummy

scoreboard players set nh_data nh_version_major 0
scoreboard players set nh_data nh_version_minor 2
scoreboard players set nh_data nh_version_patch 0