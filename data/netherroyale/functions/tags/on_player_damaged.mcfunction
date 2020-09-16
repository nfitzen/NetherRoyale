# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

function #netherroyale:events/on_player_damaged

execute if score @s nr.deaths matches 1.. run function #netherroyale:events/on_player_death

advancement revoke @s only netherroyale:on_player_damaged
