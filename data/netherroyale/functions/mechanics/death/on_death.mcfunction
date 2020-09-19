# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

execute if score $game_started nr.int matches 1.. if entity @s[tag=nr.alive] at @s run function netherroyale:mechanics/death/as_player

scoreboard players set @s nr.deaths 0
