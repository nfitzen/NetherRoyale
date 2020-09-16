# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

title @a subtitle "has reached the overworld!"
title @a title {"selector":"@s"}

tellraw @a [{"selector":"@s"}," has reached the overworld!"]

scoreboard players set $game_started nr.int 0
