#Tick

#Disable regen every tick to make sure 
gamerule naturalRegeneration false
#Sets constants for use in regen calculation
scoreboard players set @a nh_healthRegenMaxCount 200
scoreboard players set @a nh_minimumHungerForRegen 10

scoreboard players add @a nh_healthRegenCount 1
execute as @a store result score @s nh_currentHunger run data get entity @s foodLevel

#If enough time has elapsed and hunger threshold is high enough, player should regen half a heart
execute as @a if score @s nh_healthRegenCount >= @s nh_healthRegenMaxCount run execute if score @s nh_currentHunger >= @s nh_minimumHungerForRegen run effect give @s regeneration 1 2 true
execute as @a if score @s nh_healthRegenCount >= @s nh_healthRegenMaxCount run scoreboard players set @s nh_healthRegenCount 0