#Tick

#Disable regen every tick to make sure it cannot be cheated
gamerule naturalRegeneration false

scoreboard players add @a nh_healthRegenCount 1

#If enough time has elapsed, do the actual regen
execute as @a if score @s nh_healthRegenCount >= nh_data nh_healthRegenMaxCount run function nh_regen:do_regen