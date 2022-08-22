data modify entity @s[type=item] Item.id set value "bucket"
execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:light_weighted_pressure_plate",Count:1b}}]
execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:gold_ingot",Count:6b}}]
execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:magma_cream",Count:6b}}]
execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:spectral_arrow",Count:6b}}]
summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:6b,tag:{rTag:firebolt,CustomModelData:3950007,display:{Name:'{"text":"Firebolt","italic":false,"color":"yellow"}'}}}}
execute if entity @s[type=item] run function reunion:bench/forge_effect