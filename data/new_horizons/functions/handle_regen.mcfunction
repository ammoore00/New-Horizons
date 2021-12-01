#Tick

#Disable regen every tick to make sure it cannot be cheated
gamerule naturalRegeneration false
#Sets constants for use in regen calculation
scoreboard players set @a nh_healthRegenMaxCount 200
scoreboard players set @a nh_minimumHungerForRegen 10

scoreboard players add @a nh_healthRegenCount 1

#If enough time has elapsed, do the actual regen
execute as @a if score @s nh_healthRegenCount >= @s nh_healthRegenMaxCount run function new_horizons:do_regen