recipe take @s new_horizons:diamond_smithing
advancement revoke @s only new_horizons:raw_diamond

execute store success score @s nh_diamondsConverted run clear @s minecraft:diamond{CustomModelData:1} 1
execute if score @s nh_diamondsConverted matches 1 run give @s minecraft:diamond 1