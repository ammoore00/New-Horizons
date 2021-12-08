execute as @a store result score @s nh_maxHealth run attribute @s minecraft:generic.max_health get

#Check if the player's hunger is high enough and not at max health
execute as @a if predicate nh_regen:full_enough_for_regen if score @s nh_currentHealth < @s nh_maxHealth run effect give @s regeneration 1 2 true

schedule function nh_regen:regen/handle_regen 10s