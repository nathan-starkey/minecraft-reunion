# Player item detection vars >>
scoreboard objectives add r_use_item0 minecraft.used:minecraft.carrot_on_a_stick
# <<

# Init the submodules >>
function math:init
function util:init
# <<

# On ready >>
tellraw @a {"text":"Datapack reloaded","color":"green"}
# <<