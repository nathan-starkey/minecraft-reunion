scoreboard players operation in util = @s r_stored_xp
function util:xp_add
scoreboard players set @s r_stored_xp 0

# Effects
summon minecraft:experience_orb
playsound minecraft:item.bottle.fill player @a ~ ~ ~