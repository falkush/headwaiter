# headwaiter
Strategy for Mario Party 5 Minigame Head Waiter. This will give you a success rate of 113/162 against CPUs, which is about 70%.

# Strategy
If you play first, press B so that the counter goes 9->7. If the CPU goes 7->6, play B-B. If the CPU goes 7->5, play B-A.

If you play second and the CPU starts with 9->8, play A-B-A. If the CPU starts with 9->7, play B-B.

# Odds
If you play first, your success rate is 2/3 which is about 66%.
If you play second, your success rate is 59/81 which is about 73%.
If the CPU starts with 9->8, your success rate becomes 17/27 which is about 63%.
If the CPU starts with 9->7, your success rate becomes 7/9 which is about 78%.

# Assumptions on CPU Decisions
The lua script from this repository was used to do simulations. I used the following custom version of Dolphin to run lua scripts: https://github.com/SwareJonge/Dolphin-Lua-Core
From the data (around 30k simulations), it looks like the CPU will press A with 1/3 probability and B with 2/3 probability when the number is shown on the Bowser's head. When the number becomes hidden, they switch to pressing A with 2/3 probability and B with 1/3 probability.
Furthermore, changing the CPU difficulty didn't seem to change this behavior.

# Disclaimer
This has not been peer-reviewed, so everything must be taken with a grain of salt. I did not verify the statistics for every scenario for every difficulty, so it is possible that there might be some special cases where the CPU has a different behavior. I've tested all the possible strategies under these assumptions for the behavior of the CPU, but it's always possible some math mistakes were made along the way.

# Acknowledgment
Thanks to hahaphd for the idea of this project and for the discussions.

# Game Tree
![headwaiter-gametree](https://github.com/falkush/headwaiter/blob/main/headwaiter-gametree.png?raw=true)
