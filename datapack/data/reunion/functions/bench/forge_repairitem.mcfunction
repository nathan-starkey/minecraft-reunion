execute store result score damage rTemp run data get entity @s Item.tag.Damage
scoreboard players remove damage rTemp 240
execute store result entity @s Item.tag.Damage short 1 run scoreboard players get damage rTemp
data modify entity @s PickupDelay set value 0
data modify entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:lava_bucket",Count:1b}}] Item.id set value "bucket"
playsound item.bucket.empty_lava player @a ~ ~ ~ 1