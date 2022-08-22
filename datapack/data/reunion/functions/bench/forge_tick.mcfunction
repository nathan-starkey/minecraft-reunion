execute as @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:lava_bucket",Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:heavy_weighted_pressure_plate",Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:iron_ingot",Count:6b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:fire_charge",Count:6b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:string",Count:6b}}] run tag @s add rTarget
execute as @e[tag=rTarget,limit=1] at @s run function reunion:bench/forge_impactgrenade
tag @e[tag=rTarget] remove rTarget

execute as @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:lava_bucket",Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:light_weighted_pressure_plate",Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:gold_ingot",Count:6b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:magma_cream",Count:6b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:spectral_arrow",Count:6b}}] run tag @s add rTarget
execute as @e[tag=rTarget,limit=1] at @s run function reunion:bench/forge_firebolt
tag @e[tag=rTarget] remove rTarget

execute as @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:lava_bucket",Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:netherite_boots",Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:deepslate_coal_ore",Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:firework_rocket",Count:3b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:fire_charge",Count:3b}}] run tag @s add rTarget
execute as @e[tag=rTarget,limit=1] at @s run function reunion:bench/forge_rocketboots
tag @e[tag=rTarget] remove rTarget

execute as @e[type=item,distance=..0.5,nbt={Item:{tag:{rTag:"rocketboots"}}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:lava_bucket",Count:1b}}] run tag @s add rTarget
execute as @e[tag=rTarget,limit=1] at @s run function reunion:bench/forge_repairitem
tag @e[tag=rTarget] remove rTarget