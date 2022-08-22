execute store result score levels rTemp run xp query @s levels
execute if score levels rTemp matches 8.. run function reunion:item/xpring_store
execute unless score levels rTemp matches 8.. run title @s actionbar {"text":"Not enough XP","color":"red"}
execute unless score levels rTemp matches 8.. run playsound block.gravel.step player @a ~ ~ ~ 0.3 2