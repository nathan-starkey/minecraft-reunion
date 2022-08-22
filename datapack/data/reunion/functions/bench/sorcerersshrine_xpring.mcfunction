execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}]
execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}]
execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:emerald",Count:1b}}]
summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{rTag:xpring,CustomModelData:3950001,rData:{xp:0},Unbreakable:1,display:{Name:'{"text":"Ring of Experience","italic":false,"color":"green"}'}}}}
execute if entity @s[type=item] run function reunion:bench/sorcerersshrine_effect
kill @s[type=item]