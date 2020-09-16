# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

tag @s remove nr.no_tracker
gamemode adventure @s
tp ~ ~ ~
effect give @s minecraft:instant_health 1 20
effect give @s minecraft:saturation 1 20
effect give @a[distance=..5] minecraft:resistance 2 1 true
effect give @s minecraft:resistance 15 4 false

summon minecraft:lightning_bolt ~ ~ ~

tag @s add nr.alive
