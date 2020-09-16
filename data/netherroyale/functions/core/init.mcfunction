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

tellraw @a ["Go to the Nether by running ",{"text":"/execute in minecraft:the_nether run tp ~ ~ ~","underlined":true,"clickEvent":{"action":"suggest_command","value":"/execute in minecraft:the_nether run tp ~ ~ ~"},"hoverEvent":{"action":"show_text","contents":"Click to run the command!"}},".\n(So that a Nether portal isn't generated.)\nRun ",{"text":"/function netherroyale:setup","underlined":true,"clickEvent":{"action":"suggest_command","value":"/function "},"hoverEvent":{"action":"show_text","contents":"Click to run the command!"}}]

scoreboard players add $game_started nr.int 0
