# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

#declare tag nr.tracker_update
#declare tag nr.no_tracker

tag @s add nr.tracker_update
scoreboard players operation @s nr.team = @p[tag=nr.alive] nr.team
execute as @a if score @s nr.team = @e[tag=nr.tracker_update,limit=1,sort=nearest] nr.team run tag @s add nr.no_tracker

data modify entity @s Item.tag.LodestonePos.X set from entity @p[tag=!nr.no_tracker] Pos[0]
data modify entity @s Item.tag.LodestonePos.Y set from entity @p[tag=!nr.no_tracker] Pos[1]
data modify entity @s Item.tag.LodestonePos.Z set from entity @p[tag=!nr.no_tracker] Pos[2]
data modify entity @s Item.tag.LodestoneDimension set from entity @p[tag=!nr.no_tracker] Dimension

data modify entity @s PickupDelay set value 0s

title @p[tag=nr.no_tracker] actionbar ["Tracking ",{"selector":"@p[tag=!nr.no_tracker]"}]

tag @s remove nr.tracker_update
tag @a[tag=nr.alive] remove nr.no_tracker
