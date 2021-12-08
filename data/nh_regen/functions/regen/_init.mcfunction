scoreboard objectives add nh_hunger food
scoreboard objectives add nh_health health
scoreboard objectives add nh_maxHealth dummy

schedule clear nh_regen:regen/handle_regen
schedule function nh_regen:regen/handle_regen 10s