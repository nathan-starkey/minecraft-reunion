scoreboard objectives add r_carrotstick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add r_leaveGame minecraft.custom:minecraft.leave_game
scoreboard objectives add r_justJoined dummy
scoreboard objectives add r_isRidingBoat dummy
scoreboard objectives add r_wasRidingBoat dummy
scoreboard objectives add r_justRidingBoat dummy

# Init the submodules >>
function math:init
function util:init
# <<

# On ready >>
tellraw @a {"text":"Datapack reloaded","color":"green"}
# <<