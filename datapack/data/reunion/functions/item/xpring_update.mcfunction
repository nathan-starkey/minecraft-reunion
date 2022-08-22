execute unless score points rTemp matches 0 store result storage reunion:item CustomModelData int 1 run scoreboard players get 3950002 rNums
execute if score points rTemp matches 0 store result storage reunion:item CustomModelData int 1 run scoreboard players get 3950001 rNums
execute store result storage reunion:item rData.xp int 1 run scoreboard players get points rTemp
scoreboard players operation pointsK rTemp = points rTemp
scoreboard players operation pointsK rTemp /= 1000 rNums
scoreboard players operation pointsC rTemp = points rTemp
scoreboard players operation pointsC rTemp %= 1000 rNums
scoreboard players operation pointsC rTemp /= 100 rNums
execute unless score points rTemp matches 0 run item modify entity @s weapon.mainhand reunion:xpring_charged
execute if score points rTemp matches 0 run item modify entity @s weapon.mainhand reunion:xpring_empty
title @s actionbar ["This ring now has ",{"score":{"name":"pointsK","objective":"rTemp"}},".",{"score":{"name":"pointsC","objective":"rTemp"}},"k points"]