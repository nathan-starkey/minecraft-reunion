execute unless predicate reunion:kiln_burnitem run tag @s add rRepaired
execute if entity @s[tag=rRepaired] store result score damage rTemp run data get entity @s Item.tag.Damage
execute if entity @s[tag=rRepaired] run scoreboard players remove damage rTemp 100
execute if entity @s[tag=rRepaired] store result entity @s Item.tag.Damage short 1 run scoreboard players get damage rTemp
execute if entity @s[tag=rRepaired] run data modify entity @s PickupDelay set value 0
execute if entity @s[tag=rRepaired] run playsound block.anvil.place player @a ~ ~ ~ 0.3
execute unless entity @s[tag=rRepaired] run function reunion:bench/kiln_burnitem