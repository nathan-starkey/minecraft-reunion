data modify entity @s[type=item] Item.id set value "bucket"
execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:deepslate_coal_ore",Count:1b}}]
execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:firework_rocket",Count:3b}}]
execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:fire_charge",Count:3b}}]
execute if entity @s[type=item] as @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:netherite_boots",Count:1b}}] run data modify entity @s Item.tag.display.Name set value '{"text":"Rocket Boots","color":"yellow","italic":false}'
execute if entity @s[type=item] as @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:netherite_boots",Count:1b}}] run data modify entity @s Item.tag.rTag set value "rocketboots"
execute if entity @s[type=item] as @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:netherite_boots",Count:1b}}] run data modify entity @s Item.tag.CustomModelData set value 3950009
execute if entity @s[type=item] run function reunion:bench/forge_effect
execute if entity @s[type=!item] run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_boots",Count:1b,tag:{rTag:rocketboots,CustomModelData:3950009,display:{Name:'{"text":"Rocket Boots","italic":false,"color":"yellow"}'}}}}