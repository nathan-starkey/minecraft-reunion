execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:warped_fungus",Count:1b}}]
execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:gold_nugget",Count:6b}}]
summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:6b,tag:{rTag:gravitypearl,CustomModelData:3950004,display:{Name:'{"text":"Gravity Pearl","italic":false,"color":"light_purple"}'}}}}
execute if entity @s[type=item] run function reunion:bench/pearlscrubber_effect
kill @s[type=item]