# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

gamemode spectator @s
tag @s remove nr.alive
tag @s add nr.no_tracker
spawnpoint @s ~ ~ ~
kill @e[type=minecraft:item,nbt={"Item":{"tag":{"stateSponsored":true}}},distance=..3]
