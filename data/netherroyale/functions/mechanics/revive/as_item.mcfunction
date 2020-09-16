# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

#declare tag nr.revive_item the item used to revive the player

tag @s add nr.revive_item

scoreboard players operation @s nr.team = @p[tag=nr.alive] nr.team

playsound minecraft:entity.creeper.primed player @a ~ ~ ~ 0.5 2.0

tag @s add nr.revive_item.fizzled

execute as @a[tag=!nr.alive] if score @s nr.team = @e[tag=nr.revive_item,limit=1] nr.team run function netherroyale:mechanics/revive/revive_check
