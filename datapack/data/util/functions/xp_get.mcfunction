execute store result score out util run xp query @s points
execute store result score in math run xp query @s levels
function math:xp_levels_to_points
scoreboard players operation out util += out math