execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:glowstone_dust",Count:10b}}]
execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:gunpowder",Count:2b}}]
execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:clay_ball",Count:1b}}]
summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,tag:{rTag:glowball,CustomModelData:3950006,display:{Name:'{"text":"Glow Ball","italic":false}'}}}}
execute if entity @s[type=item] run function reunion:bench/pearlscrubber_effect