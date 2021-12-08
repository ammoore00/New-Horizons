# Handles required scoreboard modifications for updating a world to a new version

# Notes version used for this world, or creates it if version was not previously noted
scoreboard objectives add nh_versioned dummy
scoreboard objectives add nh_isLegacy dummy

# Sets to 1 here
# Gets set back to 0 if no version data is found
scoreboard players set nh_data nh_versioned 1
scoreboard players set nh_data nh_isLegacy 0

# If no version data is found, see if it is from updating from a legacy version or from a fresh install
execute if score nh_data nh_version_major = nh_data nh_version_major run function new_horizons:updates/check_update_or_fresh

# Run updates if version information is found, or if legacy install is detected
execute if score nh_data nh_isLegacy matches 1 run function new_horizons:updates/do_update
execute if score nh_data nh_versioned matches 1 run function new_horizons:updates/do_update

# Sets version data for the current version after updates are applied
scoreboard objectives add nh_version_major dummy
scoreboard objectives add nh_version_minor dummy
scoreboard objectives add nh_version_patch dummy

scoreboard players set nh_data nh_version_major 0
scoreboard players set nh_data nh_version_minor 2
scoreboard players set nh_data nh_version_patch 1