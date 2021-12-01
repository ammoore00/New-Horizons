execute as @a store result score @s nh_currentHunger run data get entity @s foodLevel
execute as @a store result score @s nh_currentHealth run data get entity @s Health

execute as @a store result storage new_horizons:health_values max_health int 1 run attribute @s minecraft:generic.max_health get
execute as @a store result score @s nh_maxHealth run data get storage new_horizons:health_values max_health

#Check if the player's hunger is high enough and not at max health
execute if score @s nh_currentHunger >= @s nh_minimumHungerForRegen run execute if score @s nh_currentHealth < @s nh_maxHealth run effect give @s regeneration 1 2 true

#Reset the counter
scoreboard players set @s nh_healthRegenCount 0