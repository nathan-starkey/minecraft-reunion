kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:gold_nugget",Count:8b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus",Count:1b}}]
kill @s
function reunion:item/gravpearl_craft
# Effects >>
playsound minecraft:block.enchantment_table.use player @a
particle minecraft:soul_fire_flame ~ ~0.9 ~ 0.2 0.2 0.2 0 20 force
# <<