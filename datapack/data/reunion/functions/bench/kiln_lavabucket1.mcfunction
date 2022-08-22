data modify entity @s[type=item] Item.id set value "lava_bucket"
execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:obsidian",Count:2b}}]
function reunion:bench/kiln_effect