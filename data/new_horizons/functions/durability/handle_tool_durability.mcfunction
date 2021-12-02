#Tick

execute as @a store result score @s nh_heldIDCurrent run data get entity @s SelectedItem.id
execute as @a store result score @s nh_durabilityCurrent run data get entity @s SelectedItem.tag.Damage
execute as @a store result score @s nh_heldOffhandIDCurrent run data get entity @s Inventory[{Slot:-106b}].id
execute as @a store result score @s nh_durabilityOffhandCurrent run data get entity @s Inventory[{Slot:-106b}].tag.Damage

#Makes sure the item actually got damaged the previous tick and that the player didn't swap items in the same tick
#I don't know if the id check is necessary but it doesn't hurt
execute as @a unless score @s nh_durabilityCurrent = @s nh_durabilityPrevious run execute if score @s nh_heldIDCurrent = @s nh_heldIDPrevious run scoreboard players set @s nh_wasMainHandDamaged 1
execute as @a unless score @s nh_durabilityCurrent = @s nh_durabilityPrevious run execute if score @s nh_heldIDCurrent = @s nh_heldIDPrevious run function new_horizons:durability/check_for_durability_reset

execute as @a unless score @s nh_durabilityOffhandCurrent = @s nh_durabilityOffhandPrevious run execute if score @s nh_heldOffhandIDCurrent = @s nh_heldOffhandIDPrevious run scoreboard players set @s nh_wasMainHandDamaged 0
execute as @a unless score @s nh_durabilityOffhandCurrent = @s nh_durabilityOffhandPrevious run execute if score @s nh_heldOffhandIDCurrent = @s nh_heldOffhandIDPrevious run function new_horizons:durability/check_for_durability_reset

execute as @a store result score @s nh_heldIDPrevious run data get entity @s SelectedItem.id
execute as @a store result score @s nh_durabilityPrevious run data get entity @s SelectedItem.tag.Damage
execute as @a store result score @s nh_heldOffhandIDPrevious run data get entity @s Inventory[{Slot:-106b}].id
execute as @a store result score @s nh_durabilityOffhandPrevious run data get entity @s Inventory[{Slot:-106b}].tag.Damage