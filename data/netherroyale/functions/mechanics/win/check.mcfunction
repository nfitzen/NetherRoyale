# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

execute if score $game_started nr.int matches 1.. if entity @s[tag=nr.alive] run function netherroyale:mechanics/win/main

advancement revoke @s only netherroyale:events/nether_to_overworld
