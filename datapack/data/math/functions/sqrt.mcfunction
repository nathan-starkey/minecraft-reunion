# NOTE: Yields incorrect result when "in math" = 1

# Vars >>
# Numbers
scoreboard players set 2 math 2
# Define the start
scoreboard players set 0 math 1
# Define the end
scoreboard players operation 1 math = in math
scoreboard players operation 1 math /= 2 math
# <<

# Iterate
function math:sqrt_iterate

# Correction to ensure correct rounding is used
execute unless score 3 math <= in math run scoreboard players remove out math 1