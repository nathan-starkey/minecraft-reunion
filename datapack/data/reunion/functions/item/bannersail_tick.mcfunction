execute as @a[scores={rEnterBoat=1}] at @s if predicate reunion:holdingbanner run function reunion:item/bannersail_consume
tag @e[tag=rBannersailBoat,nbt=!{Passengers:[{}]}] remove rBannersailBoat
execute as @e[type=item,nbt={Item:{tag:{CustomModelData:3950003}}}] run data remove entity @s Item.tag.CustomModelData
execute as @e[tag=rBannersail] at @s run tp @s ~ ~ ~ facing ~ ~ ~