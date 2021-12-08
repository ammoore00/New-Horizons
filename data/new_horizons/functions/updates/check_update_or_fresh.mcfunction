# Only called if no version info is found

scoreboard players set nh_data nh_versioned 0

# Checks a random scoreboard entry that was present in 0.2.0-alpha
# (which would not have had version info but does need to be updated)
# If that is found then isLegacy is set which means it needs an update, but no version numbers will be found.
execute as @a if score @s nh_boolCheckTrue = @s nh_boolCheckTrue run scoreboard players set nh_data nh_isLegacy 1