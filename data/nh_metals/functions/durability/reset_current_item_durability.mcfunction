execute as @a if score @s nh_wasMainHandDamaged = nh_data nh_boolCheckTrue run item modify entity @s weapon.mainhand nh_metals:reset_damage_iron
execute as @a unless score @s nh_wasMainHandDamaged = nh_data nh_boolCheckTrue run item modify entity @s weapon.offhand nh_metals:reset_damage_iron