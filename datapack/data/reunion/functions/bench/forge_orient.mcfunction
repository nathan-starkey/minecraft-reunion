execute if block ~-1 ~-1 ~ nether_brick_wall[up=true] if block ~1 ~-1 ~ nether_brick_wall[up=true] run tag @s add rForge
execute if block ~ ~-1 ~-1 nether_brick_wall[up=true] if block ~ ~-1 ~1 nether_brick_wall[up=true] run tag @s add rForge
execute as @e[tag=rForge] at @s run function reunion:bench/forge_tick