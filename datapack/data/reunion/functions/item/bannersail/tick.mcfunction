# Enter-boat-with-banner detection
execute as @a at @s if score @s r_justRidingBoat matches 1 if predicate reunion:holding_banner run function reunion:item/bannersail/place

# When a boats sail is removed, remove the r_boatWithSail tag
tag @e[tag=r_boatWithSail,nbt=!{Passengers:[{}]}] remove r_boatWithSail

# If a banner from a r_boatWithSail is dropped, remove the custom model data tag
execute as @e[type=item,nbt={Item:{tag:{CustomModelData:1000003}}}] run data remove entity @s Item.tag.CustomModelData

# Simple fix for armorstand rotation
execute as @e[tag=r_boatSail] at @s run tp @s ~ ~ ~ facing ~ ~ ~