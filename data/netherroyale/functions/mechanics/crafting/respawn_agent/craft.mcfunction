# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

#> netherroyale:mechanics/crafting/respawn_agent/craft
# @within netherroyale:mechanics/crafting/respawn_agent/**

clear @s minecraft:ghast_spawn_egg 1
give @s minecraft:nether_star{"revive":{"enabled":true},"display":{"Name":'{"text":"Respawn Agent","color":"dark_purple"}'}} 1

scoreboard players remove @s nr.craft_star 1
