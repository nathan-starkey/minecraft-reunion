tag @e[type=boat,limit=1,sort=nearest] add rNearestBoat
execute store success score success rTemp run clear @s armor_stand 0
execute if score success rTemp matches 1 unless entity @e[tag=rNearestBoat,tag=rBannersailBoat] run function reunion:item/bannersail_create
execute if score success rTemp matches 1 unless entity @e[tag=rNearestBoat,tag=rBannersailBoat] unless entity @s[gamemode=creative] run clear @s minecraft:armor_stand 1
execute if score success rTemp matches 1 unless entity @e[tag=rNearestBoat,tag=rBannersailBoat] unless entity @s[gamemode=creative] run item modify entity @s weapon.mainhand reunion:consumeitem
tag @e[tag=rNearestBoat] remove rNearestBoat