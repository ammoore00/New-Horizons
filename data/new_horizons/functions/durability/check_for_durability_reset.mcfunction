scoreboard players set @a nh_durabilityFrequency 2

execute as @a unless score @s nh_usesIronPick = @s nh_usesIronPick_prev run execute as @a store result score @s nh_usesIronPick_mod run scoreboard players operation @s nh_usesIronPick %= @s nh_durabilityFrequency
execute as @a unless score @s nh_usesIronPick = @s nh_usesIronPick_prev run execute if score @s nh_usesIronPick_mod = @s nh_boolCheckFalse run function new_horizons:durability/reset_current_item_durability
execute as @a store result score @s nh_usesIronPick_prev run scoreboard players get @s nh_usesIronPick

execute as @a unless score @s nh_usesIronAxe = @s nh_usesIronAxe_prev run execute as @a store result score @s nh_usesIronAxe_mod run scoreboard players operation @s nh_usesIronAxe %= @s nh_durabilityFrequency
execute as @a unless score @s nh_usesIronAxe = @s nh_usesIronAxe_prev run execute if score @s nh_usesIronAxe_mod = @s nh_boolCheckFalse run function new_horizons:durability/reset_current_item_durability
execute as @a store result score @s nh_usesIronAxe_prev run scoreboard players get @s nh_usesIronAxe

execute as @a unless score @s nh_usesIronShovel = @s nh_usesIronShovel_prev run execute as @a store result score @s nh_usesIronShovel_mod run scoreboard players operation @s nh_usesIronShovel %= @s nh_durabilityFrequency
execute as @a unless score @s nh_usesIronShovel = @s nh_usesIronShovel_prev run execute if score @s nh_usesIronShovel_mod = @s nh_boolCheckFalse run function new_horizons:durability/reset_current_item_durability
execute as @a store result score @s nh_usesIronShovel_prev run scoreboard players get @s nh_usesIronShovel

execute as @a unless score @s nh_usesIronSword = @s nh_usesIronSword_prev run execute as @a store result score @s nh_usesIronSword_mod run scoreboard players operation @s nh_usesIronSword %= @s nh_durabilityFrequency
execute as @a unless score @s nh_usesIronSword = @s nh_usesIronSword_prev run execute if score @s nh_usesIronSword_mod = @s nh_boolCheckFalse run function new_horizons:durability/reset_current_item_durability
execute as @a store result score @s nh_usesIronSword_prev run scoreboard players get @s nh_usesIronSword

execute as @a unless score @s nh_usesIronHoe = @s nh_usesIronHoe_prev run execute as @a store result score @s nh_usesIronHoe_mod run scoreboard players operation @s nh_usesIronHoe %= @s nh_durabilityFrequency
execute as @a unless score @s nh_usesIronHoe = @s nh_usesIronHoe_prev run execute if score @s nh_usesIronHoe_mod = @s nh_boolCheckFalse run function new_horizons:durability/reset_current_item_durability
execute as @a store result score @s nh_usesIronHoe_prev run scoreboard players get @s nh_usesIronHoe