execute as @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:bucket",Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:obsidian",Count:2b}}] run tag @s add rTarget
execute as @e[tag=rTarget,limit=1] at @s run function reunion:bench/kiln_lavabucket1
tag @e[tag=rTarget] remove rTarget

execute as @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:bucket",Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:magma_block",Count:4b}}] run tag @s add rTarget
execute as @e[tag=rTarget,limit=1] at @s run function reunion:bench/kiln_lavabucket2
tag @e[tag=rTarget] remove rTarget

execute as @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:cobblestone",Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:raw_iron_block",Count:1b}}] run tag @s add rTarget
execute as @e[tag=rTarget,limit=1] at @s run function reunion:bench/kiln_magmablock
tag @e[tag=rTarget] remove rTarget

execute as @e[type=item,distance=..0.5,tag=!rRepaired,nbt={Item:{id:"minecraft:iron_sword"}}] run tag @s add rTarget
execute as @e[tag=rTarget,limit=1] at @s run function reunion:bench/kiln_repairitem
tag @e[tag=rTarget] remove rTarget

execute as @e[type=item,distance=..0.5,tag=!rRepaired,nbt={Item:{id:"minecraft:iron_axe"}}] run tag @s add rTarget
execute as @e[tag=rTarget,limit=1] at @s run function reunion:bench/kiln_repairitem
tag @e[tag=rTarget] remove rTarget

execute as @e[type=item,distance=..0.5,tag=!rRepaired,nbt={Item:{id:"minecraft:iron_chestplate"}}] run tag @s add rTarget
execute as @e[tag=rTarget,limit=1] at @s run function reunion:bench/kiln_repairitem
tag @e[tag=rTarget] remove rTarget

execute as @e[type=item,distance=..0.5,tag=!rRepaired,nbt={Item:{id:"minecraft:chainmail_chestplate"}}] run tag @s add rTarget
execute as @e[tag=rTarget,limit=1] at @s run function reunion:bench/kiln_repairitem
tag @e[tag=rTarget] remove rTarget

execute as @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:stick",Count:64b}}] run tag @s add rTarget
execute as @e[tag=rTarget,limit=1] at @s run function reunion:bench/kiln_torch
tag @e[tag=rTarget] remove rTarget