data modify entity @s[type=item] Item.id set value "bucket"
execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:heavy_weighted_pressure_plate",Count:1b}}]
execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot",Count:6b}}]
execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:fire_charge",Count:6b}}]
execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:string",Count:6b}}]
summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:6b,tag:{rTag:impactgrenade,CustomModelData:3950008,display:{Name:'{"text":"Impact Grenade","italic":false,"color":"yellow"}'}}}}
execute if entity @s[type=item] run function reunion:bench/forge_effect