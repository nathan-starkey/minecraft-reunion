execute as @e[type=boat,limit=1,sort=nearest] at @s run function util:respawn_boat_with_armor_stand
tag @e[tag=r_target] add r_boatWithSail
tag @e[tag=r_target2] add r_boatSail
data merge entity @e[tag=r_target2,limit=1] {DisabledSlots:4144959,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"white_banner",Count:1}]}
data modify entity @e[tag=r_target2,limit=1] ArmorItems[3].id set from entity @s SelectedItem.id
data modify entity @e[tag=r_target2,limit=1] ArmorItems[3].tag set from entity @s SelectedItem.tag
data modify entity @e[tag=r_target2,limit=1] ArmorItems[3].tag.CustomModelData set value 1000003