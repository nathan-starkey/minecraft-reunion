# Player item detection vars >>
scoreboard objectives add r_carrotstick minecraft.used:minecraft.carrot_on_a_stick
# <<

# Event detection setup >>
# RidingBoat Event
scoreboard objectives add r_isRidingBoat dummy
scoreboard objectives add r_wasRidingBoat dummy
scoreboard objectives add r_justRidingBoat dummy
# <<

# Init the submodules >>
function math:init
function util:init
# <<

# On ready >>
tellraw @a {"text":"Datapack reloaded","color":"green"}
# <<