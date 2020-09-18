# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

scoreboard players set $game_started nr.int 1

effect give @a minecraft:instant_health 1 20
effect give @a minecraft:saturation 1 20
tag @a add nr.alive

scoreboard players set $game_started nr.int 1
