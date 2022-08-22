execute if entity @s[type=item] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:raw_iron_block",Count:1b}}]
summon item ~ ~ ~ {Item:{id:"minecraft:magma_block",Count:2b}}
function reunion:bench/kiln_effect
kill @s[type=item]