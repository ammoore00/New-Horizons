# If update found legacy information, run legacy update
execute if score nh_data nh_isLegacy matches 1 run function new_horizons:updates/updates/update_legacy