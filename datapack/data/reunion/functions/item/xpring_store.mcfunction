execute store result score points rTemp run data get entity @s SelectedItem.tag.rData.xp
scoreboard players add points rTemp 100
xp add @s -100 points
playsound item.bucket.empty player @a ~ ~ ~ 0.6
function reunion:item/xpring_update