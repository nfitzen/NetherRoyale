# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

#> netherroyale:mechanics/crafting/respawn_agent/craft
# @within netherroyale:mechanics/crafting/respawn_agent/**

clear @s minecraft:ghast_spawn_egg 1
function netherroyale:mechanics/revive/give_agent

scoreboard players remove @s[scores={nr.craft_star=1..}] nr.craft_star 1
