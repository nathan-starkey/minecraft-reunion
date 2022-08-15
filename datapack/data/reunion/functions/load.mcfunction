# Player item detection vars >>
scoreboard objectives add r_carrotstick minecraft.used:minecraft.carrot_on_a_stick
# <<

# Init the submodules >>
function math:init
function util:init
function events:load
# <<

# On ready >>
tellraw @a {"text":"Datapack reloaded","color":"green"}
# <<