# Increase the level counter
scoreboard players add out math 1

# Add level * constant >>
execute if score out math matches 0..15 run scoreboard players set 1 math 2
execute if score out math matches 16..30 run scoreboard players set 1 math 5
execute if score out math matches 31.. run scoreboard players set 1 math 9
scoreboard players operation 1 math *= out math
# <<

# Add constant >>
execute if score out math matches 0..15 run scoreboard players add 1 math 7
execute if score out math matches 16..30 run scoreboard players remove 1 math 38
execute if score out math matches 31.. run scoreboard players remove 1 math 158
# <<

# Remove points from counter
scoreboard players operation 0 math -= 1 math

# Continue
execute if score 0 math matches 0.. run function math:xp_points_to_levels_iterate