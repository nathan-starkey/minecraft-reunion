# Event detection >>
# RidingBoat Event
execute as @a run scoreboard players operation @s r_wasRidingBoat = @s r_isRidingBoat
scoreboard players set @a r_isRidingBoat 0
scoreboard players set @a r_justRidingBoat 0
scoreboard players set @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] r_isRidingBoat 1
execute as @a if score @s r_wasRidingBoat matches 0 if score @s r_isRidingBoat matches 1 run scoreboard players set @s r_justRidingBoat 1
execute as @a if score @s r_wasRidingBoat matches 1 if score @s r_isRidingBoat matches 0 run scoreboard players set @s r_justRidingBoat -1
# <<

# XP Ring >>
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1000001}}}] at @s if score @s r_use_item0 matches 1.. run function reunion:item/xpring_store
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1000002}}}] at @s if score @s r_use_item0 matches 1.. run function reunion:item/xpring_restore
# <<

# Banner Sails >>
execute as @a[nbt={SelectedItem:{id:"minecraft:white_banner"}}] at @s if score @s r_justRidingBoat matches 1 run function reunion:item/bannersail_place
execute as @a[nbt={SelectedItem:{id:"minecraft:orange_banner"}}] at @s if score @s r_justRidingBoat matches 1 run function reunion:item/bannersail_place
execute as @a[nbt={SelectedItem:{id:"minecraft:magenta_banner"}}] at @s if score @s r_justRidingBoat matches 1 run function reunion:item/bannersail_place
execute as @a[nbt={SelectedItem:{id:"minecraft:light_blue_banner"}}] at @s if score @s r_justRidingBoat matches 1 run function reunion:item/bannersail_place
execute as @a[nbt={SelectedItem:{id:"minecraft:yellow_banner"}}] at @s if score @s r_justRidingBoat matches 1 run function reunion:item/bannersail_place
execute as @a[nbt={SelectedItem:{id:"minecraft:lime_banner"}}] at @s if score @s r_justRidingBoat matches 1 run function reunion:item/bannersail_place
execute as @a[nbt={SelectedItem:{id:"minecraft:pink_banner"}}] at @s if score @s r_justRidingBoat matches 1 run function reunion:item/bannersail_place
execute as @a[nbt={SelectedItem:{id:"minecraft:gray_banner"}}] at @s if score @s r_justRidingBoat matches 1 run function reunion:item/bannersail_place
execute as @a[nbt={SelectedItem:{id:"minecraft:light_gray_banner"}}] at @s if score @s r_justRidingBoat matches 1 run function reunion:item/bannersail_place
execute as @a[nbt={SelectedItem:{id:"minecraft:cyan_banner"}}] at @s if score @s r_justRidingBoat matches 1 run function reunion:item/bannersail_place
execute as @a[nbt={SelectedItem:{id:"minecraft:purple_banner"}}] at @s if score @s r_justRidingBoat matches 1 run function reunion:item/bannersail_place
execute as @a[nbt={SelectedItem:{id:"minecraft:blue_banner"}}] at @s if score @s r_justRidingBoat matches 1 run function reunion:item/bannersail_place
execute as @a[nbt={SelectedItem:{id:"minecraft:brown_banner"}}] at @s if score @s r_justRidingBoat matches 1 run function reunion:item/bannersail_place
execute as @a[nbt={SelectedItem:{id:"minecraft:green_banner"}}] at @s if score @s r_justRidingBoat matches 1 run function reunion:item/bannersail_place
execute as @a[nbt={SelectedItem:{id:"minecraft:red_banner"}}] at @s if score @s r_justRidingBoat matches 1 run function reunion:item/bannersail_place
execute as @a[nbt={SelectedItem:{id:"minecraft:black_banner"}}] at @s if score @s r_justRidingBoat matches 1 run function reunion:item/bannersail_place
tag @e[tag=r_boatWithSail,nbt=!{Passengers:[{}]}] remove r_boatWithSail
execute as @e[type=item,nbt={Item:{tag:{CustomModelData:1000003}}}] run data remove entity @s Item.tag.CustomModelData
# Buggy rotation fix for bannersail armorstands
execute as @e[tag=r_boatSail] at @s run tp @s ~ ~ ~ facing ~ ~ ~
# <<