# Handles required scoreboard modifications for updating a world to a new version

function new_horizons:updates/do_update

# Sets version data for the current version after updates are applied
scoreboard objectives add nh_version_major dummy
scoreboard objectives add nh_version_minor dummy
scoreboard objectives add nh_version_patch dummy

scoreboard players set nh_data nh_version_major 0
scoreboard players set nh_data nh_version_minor 2
scoreboard players set nh_data nh_version_patch 1