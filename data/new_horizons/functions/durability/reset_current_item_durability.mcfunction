execute as @a if score @s nh_wasMainHandDamaged = @s nh_boolCheckTrue run item modify entity @s weapon.mainhand new_horizons:reset_damage_iron
execute as @a unless score @s nh_wasMainHandDamaged = @s nh_boolCheckTrue run item modify entity @s weapon.offhand new_horizons:reset_damage_iron