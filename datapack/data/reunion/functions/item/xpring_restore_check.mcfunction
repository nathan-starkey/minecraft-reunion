execute store result score points rTemp run data get entity @s SelectedItem.tag.rData.xp
execute unless score points rTemp matches 100.. run title @s actionbar {"text":"This ring is empty","color":"red"}
execute unless score points rTemp matches 100.. run playsound block.gravel.step player @a ~ ~ ~ 0.3 2
execute if score points rTemp matches 100.. run function reunion:item/xpring_restore