execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:feather",Count:4b}}]
execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:clay_ball",Count:1b}}]
summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,tag:{rTag:featherburst,CustomModelData:3950005,display:{Name:'{"text":"Feather Burst","italic":false}'}}}}
execute if entity @s[type=item] run function reunion:bench/pearlscrubber_effect