execute as @e[tag=rNearestBoat] at @s run function reunion:item/bannersail_recreateboat
tag @e[tag=rTarget] add rBannersailBoat
tag @e[tag=rTarget2] add rBannersail
data merge entity @e[tag=rTarget2,limit=1] {DisabledSlots:4144959,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"white_banner",Count:1}]}
data modify entity @e[tag=rTarget2,limit=1] ArmorItems[3].id set from entity @s SelectedItem.id
data modify entity @e[tag=rTarget2,limit=1] ArmorItems[3].tag set from entity @s SelectedItem.tag
data modify entity @e[tag=rTarget2,limit=1] ArmorItems[3].tag.CustomModelData set value 3950003
tag @e[tag=rTarget] remove rTarget
tag @e[tag=rTarget2] remove rTarget2