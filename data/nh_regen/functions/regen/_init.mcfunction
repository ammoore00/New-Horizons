#Used for tracking health regen
scoreboard objectives add nh_healthRegenMaxCount dummy
scoreboard objectives add nh_minimumHungerForRegen dummy

#Sets constants for use in regen calculation
scoreboard players set nh_data nh_healthRegenMaxCount 200
scoreboard players set nh_data nh_minimumHungerForRegen 10

scoreboard objectives add nh_healthRegenCount dummy
scoreboard objectives add nh_currentHunger dummy
scoreboard objectives add nh_currentHealth dummy
scoreboard objectives add nh_maxHealth dummy