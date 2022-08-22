execute if block ~-1 ~-1 ~ amethyst_cluster[facing=west] if block ~1 ~-1 ~ amethyst_cluster[facing=east] run tag @s add rSorcerersshrine
execute if block ~ ~-1 ~-1 amethyst_cluster[facing=north] if block ~ ~-1 ~1 amethyst_cluster[facing=south] run tag @s add rSorcerersshrine
execute as @e[tag=rSorcerersshrine] at @s run function reunion:bench/sorcerersshrine_tick