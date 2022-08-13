scoreboard players set @s r_use_item0 0
function util:xp_get
execute store result storage reunion:xpring StoredXp int 1 run scoreboard players get out util
data modify storage reunion:xpring CustomModelData set value 1000002
item modify entity @s weapon.mainhand reunion:xpring_store
xp set @s 0 points
xp set @s 0 levels

# Effects
playsound minecraft:item.bottle.empty player @a ~ ~ ~