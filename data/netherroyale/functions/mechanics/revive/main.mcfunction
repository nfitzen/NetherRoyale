# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

#declare tag nr.revive_item.fizzled

execute as @e[tag=!nr.revive_item.fizzled,type=minecraft:item,nbt={"Item":{"id":"minecraft:nether_star",Count:1b,"tag":{"revive":{"enabled":true}}},"OnGround":true}] if data entity @s Thrower at @s run function netherroyale:mechanics/revive/as_item
