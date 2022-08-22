execute as @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:bowl",Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:feather",Count:4b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:clay_ball",Count:1b}}] run tag @s add rTarget
execute as @e[tag=rTarget,limit=1] at @s run function reunion:bench/pearlscrubber_featherburst
tag @e[tag=rTarget] remove rTarget

execute as @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus",Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:gold_nugget",Count:6b}}] run tag @s add rTarget
execute as @e[tag=rTarget,limit=1] at @s run function reunion:bench/pearlscrubber_gravitypearl
tag @e[tag=rTarget] remove rTarget

execute as @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:bowl",Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:glowstone_dust",Count:10b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:gunpowder",Count:2b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:clay_ball",Count:1b}}] run tag @s add rTarget
execute as @e[tag=rTarget,limit=1] at @s run function reunion:bench/pearlscrubber_glowball
tag @e[tag=rTarget] remove rTarget

execute positioned ~ ~0.5 ~ as @a[distance=..0.3] run function reunion:bench/pearlscrubber_teleport