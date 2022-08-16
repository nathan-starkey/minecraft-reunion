# Execute the recipe if possible
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] at @s if block ~ ~ ~ enchanting_table if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:gold_nugget",Count:4b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus",Count:1b}}] run tag @s add r_temp
execute as @e[tag=r_temp,limit=1] at @s run function reunion:item/gravpearl/recipe
tag @e[tag=r_temp] remove r_temp

# Tag each new gravpearl instance
tag @e[type=snowball,tag=!r_gravpearl,nbt={Item:{tag:{CustomModelData:1000004}}}] add r_gravpearl

# Detect gravpearl collision
execute at @e[tag=r_gravpearlMarker] unless entity @e[type=snowball,tag=r_gravpearl,distance=..3] run function reunion:item/gravpearl/impact
kill @e[tag=r_gravpearlMarker]
execute at @e[tag=r_gravpearl] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:[r_gravpearlMarker]}

# Display some effects on each gravpearl
execute at @e[tag=r_gravpearl] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0 1