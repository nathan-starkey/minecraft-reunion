# Item Use: Ring XP
execute as @a[scores={r_use_0=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1000001}}}] at @s run function reunion:item_use/ring_xp
scoreboard players reset @a r_use_0