execute as @a store result score @s nh_maxHealth run attribute @s minecraft:generic.max_health get

#Check if the player's hunger is high enough and not at max health
execute as @a[scores={nh_currentHunger=11..}] if score @s nh_currentHealth < @s nh_maxHealth run effect give @s regeneration 1 2 true

#Reset the counter
scoreboard players set @s nh_healthRegenCount 0

schedule function nh_regen:regen/handle_regen 10s