# Events >>
# Riding Boat
execute as @a run scoreboard players operation @s r_wasRidingBoat = @s r_isRidingBoat
scoreboard players set @a r_isRidingBoat 0
scoreboard players set @a r_justRidingBoat 0
scoreboard players set @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] r_isRidingBoat 1
execute as @a if score @s r_wasRidingBoat matches 0 if score @s r_isRidingBoat matches 1 run scoreboard players set @s r_justRidingBoat 1
execute as @a if score @s r_wasRidingBoat matches 1 if score @s r_isRidingBoat matches 0 run scoreboard players set @s r_justRidingBoat -1

# Player Joined
scoreboard players set @a r_justJoined 0
scoreboard players set @a[tag=!init] r_justJoined 1
tag @a[tag=!init] add init
scoreboard players set @a[scores={r_leaveGame=1..}] r_justJoined 1
scoreboard players set @a r_leaveGame 0
# <<

execute as @a[scores={r_justJoined=1}] run function reunion:help/index

function reunion:item/xpring/tick
function reunion:item/gravpearl/tick
function reunion:item/bannersail/tick