# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

execute as @a run function #netherroyale:core/tick/as_player

execute as @e[type=minecraft:item] run function #netherroyale:core/tick/as_item
