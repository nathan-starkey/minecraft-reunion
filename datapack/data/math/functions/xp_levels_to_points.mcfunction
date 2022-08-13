# Get the quadratic's "a" component >>
scoreboard players set 0 math 0
execute if score in math matches 1..16 run scoreboard players set 0 math 2
execute if score in math matches 17..31 run scoreboard players set 0 math 5
execute if score in math matches 32.. run scoreboard players set 0 math 9
# <<

# Get the quadratic's "b" component >>
scoreboard players set 1 math 0
execute if score in math matches 1..16 run scoreboard players set 1 math 12
execute if score in math matches 17..31 run scoreboard players set 1 math -81
execute if score in math matches 32.. run scoreboard players set 1 math -325
# <<

# Get the quadratic's "c" component >>
scoreboard players set 2 math 0
execute if score in math matches 1..16 run scoreboard players set 2 math 0
execute if score in math matches 17..31 run scoreboard players set 2 math 720
execute if score in math matches 32.. run scoreboard players set 2 math 4440
# <<

# Add the "ax^2" component >>
scoreboard players operation 3 math = 0 math
scoreboard players operation 3 math *= in math
scoreboard players operation 3 math *= in math
scoreboard players operation out math = 3 math
# <<

# Add the "bx" component >>
scoreboard players operation 3 math = 1 math
scoreboard players operation 3 math *= in math
scoreboard players operation out math += 3 math
# <<

# Add the "c" component >>
scoreboard players operation out math += 2 math
# <<

# Divide the math_output by 2 >>
scoreboard players set 3 math 2
scoreboard players operation out math /= 3 math
# <<