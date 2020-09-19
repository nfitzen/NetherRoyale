# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

#>
# don't cause conflicts
# @internal
    scoreboard objectives add nr.int dummy
    scoreboard objectives add nr.tmp dummy

#>
# @public
    scoreboard objectives add nr.team dummy
    scoreboard objectives add nr.deaths deathCount
    scoreboard objectives add nr.flags dummy

tellraw @a ["Go to the Nether by running ",{"text":"/function netherroyale:go_to_nether","underlined":true,"clickEvent":{"action":"suggest_command","value":"/function netherroyale:go_to_nether"},"hoverEvent":{"action":"show_text","contents":"Click to run the command!"}},".\n(So that a Nether portal isn't generated.)\nRun ",{"text":"/function netherroyale:begin","underlined":true,"clickEvent":{"action":"suggest_command","value":"/function netherroyale:begin"},"hoverEvent":{"action":"show_text","contents":"Click to run the command!"}}," to begin the game."]

scoreboard players add $game_started nr.int 0

scoreboard players add $disable_strider nr.flags 0
