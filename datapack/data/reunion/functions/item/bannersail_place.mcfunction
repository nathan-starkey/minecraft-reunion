# If player has armor stand AND nearest boat is not r_boatWithSail >>
tag @e[type=boat,limit=1,sort=nearest] add r_nearestBoat
execute store success score out util run clear @s minecraft:armor_stand 0
# Then
execute if score out util matches 1 unless entity @e[tag=r_nearestBoat,tag=r_boatWithSail] run function reunion:item/bannersail_spawn
execute if score out util matches 1 unless entity @e[tag=r_nearestBoat,tag=r_boatWithSail] unless entity @s[gamemode=creative] run clear @s minecraft:armor_stand 1
execute if score out util matches 1 unless entity @e[tag=r_nearestBoat,tag=r_boatWithSail] unless entity @s[gamemode=creative] run item modify entity @s weapon.mainhand reunion:bannersail_place
tag @e[tag=r_nearestBoat] remove r_nearestBoat
# <<