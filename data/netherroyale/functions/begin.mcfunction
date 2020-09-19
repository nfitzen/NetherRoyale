# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

scoreboard players set $game_started nr.int 1

gamemode survival @a
effect give @a minecraft:instant_health 1 20
effect give @a minecraft:saturation 1 20
advancement revoke @a everything
recipe take @a *
xp set @a 0 levels
xp set @a 0 points
clear @a

execute unless score $disable_strider nr.flags matches 1.. run give @a minecraft:warped_fungus_on_a_stick{"stateSponsored":true,"display":{"Name":'{"text":"State-Sponsored Warped Fungus on a Stick","color":"light_purple","italic":false}',"Lore":['"if you die with stick"','"capitalists can\'t have it"','"because it delet"']}}

tag @a add nr.alive

scoreboard players set $game_started nr.int 1
