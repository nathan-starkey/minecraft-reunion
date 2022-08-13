# Math >>
# Calculate the middle
scoreboard players operation out math = 0 math
scoreboard players operation out math += 1 math
scoreboard players operation out math /= 2 math
# Calculate the square
scoreboard players operation 3 math = out math
scoreboard players operation 3 math *= out math
# <<

# Logic >>
# If the square is less than the input
execute if score 3 math < in math run scoreboard players operation 0 math = out math
execute if score 3 math < in math run scoreboard players add 0 math 1
# If the square is greater than the input
execute if score 3 math > in math run scoreboard players operation 1 math = out math
execute if score 3 math > in math run scoreboard players remove 1 math 1
# <<

# Iterate >>
# Continue while the result is not a perfect square, and the start is LEQ the end
execute unless score 3 math = in math if score 0 math <= 1 math run function math:sqrt_iterate
# <<