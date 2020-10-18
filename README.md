<!--
  ~ SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
  ~
  ~ SPDX-License-Identifier: MIT
 -->

# Nether Royale
A race to the overworld with a few extra things

## Features

- Respawn Agents that can revive a teammate
    - Crafted with a diamond and a respsawn anchor
    - Drop to revive a teammate
- Player trackers
    - Crafted with 4 gold and a ghast tear in a compass shape
    - Drop to update. You can't give it to someone else unless you use a chest because of this.

## Usage

So since the guy for whom I initially created this had some... odd design
decisions, there are a lot of things you have to do manually, unlike my other
datapacks. Basic scuffed tutorial:

1. Set your `server.properties`.
    - Resource pack properties can be found in the [latest resource pack release][resources].
    - `gamemode=spectator` (so that people who aren't playing can spectate)

[resources]: https://github.com/nfitzen/NetherRoyale/releases/tag/resources/v0.3.1

2. Create the teams manually and have people join them
    - I cannot speak to these design decisions.
    - This is the gist of the commands you should use:

    ```mcfunction
    team add nr.team_name "<name>"
    team modify nr.team_name color <color>
    ```

3. Assign team scores
    - Because we're definitely going to have more than 15 teams.
    - `scoreboard players set @a[team=nr.team_name] nr.team <unique value>`

4. Run `function netherroyale:go_to_nether`.
5. Run `locatebiome minecraft:nether_wastes` and teleport there
6. Create a really scuffed platform with striders and put the players in there
7. Run `function netherroyale:begin` to put everyone in survival
    and give them a State-Sponsored Warped Fungus on a Stick

## Copyright

Licensed under the [Expat/MIT License](LICENSE).

More licensing info can be obtained using the [REUSE Initiative]'s tool with
`reuse spdx` or by looking at individual files.

[REUSE initiative]: https://reuse.software/
