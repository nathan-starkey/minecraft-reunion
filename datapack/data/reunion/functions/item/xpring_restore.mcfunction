scoreboard players set @s r_carrotstick 0
execute store result score in util run data get entity @s SelectedItem.tag.StoredXp
function util:xp_add
data modify storage reunion:xpring CustomModelData set value 1000001
data modify storage reunion:xpring StoredXp set value 0
item modify entity @s weapon.mainhand reunion:xpring_restore

# Effects
summon minecraft:experience_orb
playsound minecraft:item.bottle.fill player @a ~ ~ ~