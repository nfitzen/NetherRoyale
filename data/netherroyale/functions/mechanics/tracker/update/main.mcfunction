# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

execute if data entity @s {"Item":{"tag":{"tracker":{"enabled":true}}}} run function netherroyale:mechanics/tracker/update/as_item
