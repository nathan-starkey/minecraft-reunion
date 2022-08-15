# Riding Boat Event
execute as @a run scoreboard players operation @s ev_wasRidingBoat = @s ev_isRidingBoat
scoreboard players set @a ev_isRidingBoat 0
scoreboard players set @a ev_justRidingBoat 0
scoreboard players set @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] ev_isRidingBoat 1
execute as @a if score @s ev_wasRidingBoat matches 0 if score @s ev_isRidingBoat matches 1 run scoreboard players set @s ev_justRidingBoat 1
execute as @a if score @s ev_wasRidingBoat matches 1 if score @s ev_isRidingBoat matches 0 run scoreboard players set @s ev_justRidingBoat -1

# Player Joined Event
scoreboard players set @a ev_justJoined 0
scoreboard players set @a[tag=!init] ev_justJoined 1
tag @a[tag=!init] add init
scoreboard players set @a[scores={ev_leaveGame=1..}] ev_justJoined 1
scoreboard players set @a ev_leaveGame 0