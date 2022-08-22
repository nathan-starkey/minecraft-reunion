execute if block ~-1 ~-1 ~ warped_trapdoor[facing=west,open=true] if block ~1 ~-1 ~ warped_trapdoor[facing=east,open=true] run tag @s add rPearlscrubber
execute if block ~ ~-1 ~-1 warped_trapdoor[facing=north,open=true] if block ~ ~-1 ~1 warped_trapdoor[facing=south,open=true] run tag @s add rPearlscrubber
execute as @e[tag=rPearlscrubber] at @s run function reunion:bench/pearlscrubber_tick
