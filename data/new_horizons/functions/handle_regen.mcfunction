#Tick

#Disable regen every tick to make sure it cannot be cheated
gamerule naturalRegeneration false
#Sets constants for use in regen calculation
scoreboard players set @a nh_healthRegenMaxCount 200
scoreboard players set @a nh_minimumHungerForRegen 10

scoreboard players add @a nh_healthRegenCount 1
execute as @a store result score @s nh_currentHunger run data get entity @s foodLevel
execute as @a store result score @s nh_currentHealth run data get entity @s Health

execute as @a store result storage new_horizons:health_values max_health int 1 run attribute @s minecraft:generic.max_health get
execute as @a store result score @s nh_maxHealth run data get storage new_horizons:health_values max_health

#If enough time has elapsed, do the actual regen
execute as @a if score @s nh_healthRegenCount >= @s nh_healthRegenMaxCount run function new_horizons:do_regen