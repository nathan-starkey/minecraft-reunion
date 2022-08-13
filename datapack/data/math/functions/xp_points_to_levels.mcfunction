# Setup >>
scoreboard players set out math -1
scoreboard players operation 0 math = in math
# <<

# Some cached numbers to reduce total function calls >>
execute if score 0 math matches 112.. run scoreboard players add out math 8
execute if score 0 math matches 112.. run scoreboard players remove 0 math 112
execute if score 0 math matches 240.. run scoreboard players add out math 8
execute if score 0 math matches 240.. run scoreboard players remove 0 math 240
execute if score 0 math matches 1164.. run scoreboard players add out math 16
execute if score 0 math matches 1164.. run scoreboard players remove 0 math 1164
execute if score 0 math matches 8160.. run scoreboard players add out math 32
execute if score 0 math matches 8160.. run scoreboard players remove 0 math 8160
execute if score 0 math matches 42804.. run scoreboard players add out math 64
execute if score 0 math matches 42804.. run scoreboard players remove 0 math 42804
execute if score 0 math matches 188040.. run scoreboard players add out math 128
execute if score 0 math matches 188040.. run scoreboard players remove 0 math 188040
# <<

# Execution >>
function math:xp_points_to_levels_iterate
# <<