execute store result score points rTemp run data get entity @s SelectedItem.tag.rData.xp
scoreboard players remove points rTemp 100
xp add @s 100 points
playsound item.bucket.fill player @a ~ ~ ~ 0.6
summon experience_orb ~ ~ ~ {Value:0}
function reunion:item/xpring_update