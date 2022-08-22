summon minecraft:boat ~ ~ ~ {Passengers:[{id:"minecraft:armor_stand",Tags:[rTarget2]}],Tags:[rTarget]}
execute if entity @s[nbt={Type:"oak"}] as @e[tag=rTarget] run data modify entity @s Type set value "oak"
execute if entity @s[nbt={Type:"spruce"}] as @e[tag=rTarget] run data modify entity @s Type set value "spruce"
execute if entity @s[nbt={Type:"birch"}] as @e[tag=rTarget] run data modify entity @s Type set value "birch"
execute if entity @s[nbt={Type:"jungle"}] as @e[tag=rTarget] run data modify entity @s Type set value "jungle"
execute if entity @s[nbt={Type:"acacia"}] as @e[tag=rTarget] run data modify entity @s Type set value "acacia"
execute if entity @s[nbt={Type:"dark_oak"}] as @e[tag=rTarget] run data modify entity @s Type set value "dark_oak"
execute if entity @s[nbt={Type:"mangrove"}] as @e[tag=rTarget] run data modify entity @s Type set value "mangrove"
kill @s[type=boat]