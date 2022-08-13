function util:xp_get
scoreboard players operation @s r_stored_xp += out util
xp set @s 0 points
xp set @s 0 levels

# Effects
playsound minecraft:item.bottle.empty player @a ~ ~ ~