# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

execute if score @s nr.craft_tracker matches 1.. if data entity @s {"Inventory":[{"id":"minecraft:knowledge_book"}]} run function netherroyale:mechanics/crafting/tracker/craft

execute if score @s nr.craft_tracker matches 1.. at @s as @e[distance=..5,type=item,nbt={"Item":{"id":"minecraft:knowledge_book"}}] run data modify entity @s Owner set from entity @s Thrower
