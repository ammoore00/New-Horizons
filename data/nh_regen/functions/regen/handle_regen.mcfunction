execute as @a store result score @s nh_maxHealth run attribute @s minecraft:generic.max_health get

#Check if the player's hunger is high enough and not at max health
execute as @a[predicate=nh_regen:full_enough_for_regen] if score @s nh_health < @s nh_maxHealth run effect give @s regeneration 1 2 true

function nh_regen:regen/regen_clock