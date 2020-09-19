<!--
  ~ SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
  ~
  ~ SPDX-License-Identifier: MIT
 -->

# Nether Royale
A race to the overworld with a few extra things

## Features

- Respawn Agents that can revive your friends
- Player trackers

## Usage

So since the guy for whom I initially created this (henceforth "Dick") had some
really dumb restrictions, there are a lot of things you have to do manually,
unlike my other datapacks. Basic scuffed tutorial:

1. Set your `server.properties`.
    - Resource pack properties can be found in the [latest resource pack release][resources].
    - `gamemode=spectator` (so that people who aren't playing can spectate)

[resources]: https://github.com/nfitzen/NetherRoyale/releases/tag/resources/v0.3.1

2. Create the teams manually and have people join them
    - "i lIkE eXtEnSiBilItY" (I swear to God Dick's worse than I am, says the guy who made an overengineered piece of shit)
    - Here's the general code:

    ```mcfunction
    team add nr.<team_name> "<name>"
    team modify nr.team_name color <color>
    ```

3. Assign team scores
    - Again, "I lIkE eXtEnSiBiLiTy" (because we're totally gonna have >15 teams)
    - `scoreboard players set @a[team=nr.<team_name>] nr.team <unique value>`
4. Run `function netherroyale:go_to_nether`.
5. Run `locatebiome minecraft:nether_wastes`
6. Create some really scuffed platform with striders and put the players in there
7. Run `function netherroyale:begin` to put everyone in survival
    and give them a State-Sponsored Warped Fungus on a Stick

## Copyright

Licensed under the [Expat/MIT License](LICENSE).

More licensing info can be obtained using the [REUSE Initiative]'s tool with
`reuse spdx` or by looking at individual files.

[REUSE initiative]: https://reuse.software/
