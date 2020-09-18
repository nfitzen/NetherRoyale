# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

execute if score @s nr.craft_star matches 1.. if data entity @s {"Inventory":[{"id":"minecraft:ghast_spawn_egg"}]} run function netherroyale:mechanics/crafting/respawn_agent/craft

execute if score @s nr.craft_star matches 1.. at @s as @e[distance=..5,type=minecraft:item,nbt={"Item":{"id":"minecraft:ghast_spawn_egg"}}] unless data entity @s Item.tag.CustomModelData run data modify entity @s Owner set from entity @s Thrower
