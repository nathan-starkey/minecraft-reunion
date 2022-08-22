function reunion:snowball
effect clear @e[scores={rClearLevitation=1}] levitation
scoreboard players reset @e[scores={rClearLevitation=1}] rClearLevitation
kill @e[scores={rKill=1}]
scoreboard players remove @e[scores={rClearLevitation=1..}] rClearLevitation 1
scoreboard players remove @e[scores={rKill=1..}] rKill 1

# Join
scoreboard players set @a rJoin 0
scoreboard players set @a[tag=!rInit] rJoin 1
tag @a[tag=!rInit] add rInit
scoreboard players set @a[scores={rLeave=1..}] rJoin 1

# Rocket Boots
scoreboard players set @a[nbt={OnGround:1b}] rRocketFlight -1
execute as @a[nbt={OnGround:0b},scores={rRocketFlight=-1},nbt={Inventory:[{Slot:100b,tag:{rTag:"rocketboots"}}]}] unless entity @s[nbt={Inventory:[{Slot:100b,tag:{Damage:481}}]}] run scoreboard players set @s rRocketFlight 40
execute as @a[scores={rRocketFlight=1..,rSneakTime=1}] at @s run function reunion:item/rocketboots

# XP Ring
execute as @a[scores={rCarrotOnAStick=1},nbt={SelectedItem:{tag:{rTag:"xpring"}}}] at @s run function reunion:item/xpring

# Banner Sails
execute as @a run scoreboard players operation @s rWasInBoat = @s rIsInBoat
scoreboard players set @a rIsInBoat 0
scoreboard players set @a rEnterBoat 0
scoreboard players set @a rExitBoat 0
scoreboard players set @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] rIsInBoat 1
execute as @a if score @s rWasInBoat matches 0 if score @s rIsInBoat matches 1 run scoreboard players set @s rEnterBoat 1
execute as @a if score @s rWasInBoat matches 1 if score @s rIsInBoat matches 0 run scoreboard players set @s rExitBoat 1
function reunion:item/bannersail_tick

# Fast sounds timer
scoreboard players add fastSounds rTemp 1
execute if score fastSounds rTemp matches 4.. run scoreboard players set fastSounds rTemp 0

# Welcome, Help
execute as @a[scores={rJoin=1}] run function reunion:welcome

# Reset scoreboards
scoreboard players set @a[scores={rLeave=1..}] rLeave 0
scoreboard players set @a[scores={rSneakTime=1..}] rSneakTime 0
scoreboard players reset @e[scores={rCarrotOnAStick=1..}] rCarrotOnAStick