# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

#> netherroyale:mechanics/crafting/nether_star/craft
# @within netherroyale:mechanics/crafting/tracker/**

clear @s minecraft:knowledge_book 1
function netherroyale:mechanics/tracker/give

scoreboard players remove @s nr.craft_tracker 1
