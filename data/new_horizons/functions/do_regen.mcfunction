#Check if the player's hunger is high enough and not at max health
execute if score @s nh_currentHunger >= @s nh_minimumHungerForRegen run execute if score @s nh_currentHealth < @s nh_maxHealth run effect give @s regeneration 1 2 true

scoreboard players set @s nh_healthRegenCount 0