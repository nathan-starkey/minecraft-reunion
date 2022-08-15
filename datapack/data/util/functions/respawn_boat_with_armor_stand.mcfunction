kill @s[type=boat]
tag @e[tag=r_target] remove r_target
tag @e[tag=r_target2] remove r_target2
summon minecraft:boat ~ ~ ~ {Passengers:[{id:"minecraft:armor_stand",Tags:[r_target2]}],Tags:[r_target]}
execute if entity @s[nbt={Type:"oak"}] as @e[tag=r_target] run data modify entity @s Type set value "oak"
execute if entity @s[nbt={Type:"spruce"}] as @e[tag=r_target] run data modify entity @s Type set value "spruce"
execute if entity @s[nbt={Type:"birch"}] as @e[tag=r_target] run data modify entity @s Type set value "birch"
execute if entity @s[nbt={Type:"jungle"}] as @e[tag=r_target] run data modify entity @s Type set value "jungle"
execute if entity @s[nbt={Type:"acacia"}] as @e[tag=r_target] run data modify entity @s Type set value "acacia"
execute if entity @s[nbt={Type:"dark_oak"}] as @e[tag=r_target] run data modify entity @s Type set value "dark_oak"
execute if entity @s[nbt={Type:"mangrove"}] as @e[tag=r_target] run data modify entity @s Type set value "mangrove"