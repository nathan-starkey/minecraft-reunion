playsound entity.item.break player @a ~ ~ ~ 0.5
execute if entity @s[nbt={Item:{id:"minecraft:iron_axe"}}] run summon item ~ ~ ~ {Item:{id:"stick",Count:1}}
execute if entity @s[nbt={Item:{id:"minecraft:iron_sword"}}] run summon item ~ ~ ~ {Item:{id:"stick",Count:1}}
kill @s[type=item]