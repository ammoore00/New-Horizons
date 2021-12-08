scoreboard objectives add nh_currentHunger food
scoreboard objectives add nh_currentHealth health
scoreboard objectives add nh_maxHealth dummy

schedule clear nh_regen:regen/handle_regen
schedule function nh_regen:regen/handle_regen 10s