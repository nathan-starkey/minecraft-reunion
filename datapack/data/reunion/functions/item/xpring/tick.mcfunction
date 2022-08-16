# On item crafted >>
execute as @e[type=item,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] at @s if block ~ ~ ~ enchanting_table if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:ender_eye",Count:1b}}] run tag @s add r_temp
execute as @e[tag=r_temp,limit=1] at @s run function reunion:item/xpring/recipe
tag @e[tag=r_temp] remove r_temp
# <<

# On item used >>
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1000001}}}] at @s if score @s r_carrotstick matches 1.. run function reunion:item/xpring/store
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1000002}}}] at @s if score @s r_carrotstick matches 1.. run function reunion:item/xpring/restore
# <<