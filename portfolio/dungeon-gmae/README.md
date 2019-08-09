# Dungeon Gmae

Yes, you read that right. It's "Gmae."

## What is it?

[Dungeon Gmae](https://github.com/nullromo/DungeonGmae) is an adventure game I wrote with Collin Dutter in high school. This was our very first attempt at creating a video game, and the result was... well, not bad for a first try. It even has sound!

| Dungeon Gmae |
|:-:|
|![Game][Game] |

## Gameplay

We wanted to create the feeling of a text-based adventure, but with supporting graphics. The dungeon scene, map, and inventory would be shown to the player, but the main interaction would come via typing in commands and reading descriptions.

| The Dungeon | The Map |
|:-:|:-:|
| ![Dungeon][Dungeon] | ![Map][Map] |
| The static image of the dungeon in the background with the player on the left is constant throughout the game. | The map shows where the player has explored and notes what type of encounter occurred in each room (Monster, Chest, NPC, Puzzle, or Shop). |

| The command interface |
|:-:|
| ![Commands][Commands] |
| Commands such as `north` or `attack` are typed in and interpreted by the game. Results are printed in a scrollable history. The available commands in a given scenario are shown at the left in the scrollable help window. |

Overall, the storyline and gameplay were not developed very far. All the rooms are basically the same, and you either fight the monsters, open the chests, or solve the puzzles. But the proof of concept was there for more in-depth development.

## Art

Our art skills weren't the best; some of the drawings were kind of cool...

| Hydra | Minotaur | Elf |
|:-:|:-:|:-:|
| ![Hydra][Hydra] | ![Minotaur][Minotaur] | ![Elf][Elf] |

while others were not as polished.

| Wyvern | Imp | Blob |
|:-:|:-:|:-:|
| ![Wyvern][Wyvern] | ![Imp][Imp] | ![Blob][Blob] |

## Code

The code structure was decent. We had two threads running the main engine, one for graphics and one for updates. The graphics thread was as simple as `draw()` and `sleep(17)` for a framerate close to 60 fps. A key listener waited for `ENTER` to be pressed and handled the input from the main text field accordingly.

There were many small coding style areas where our inexperience shows through. For example, the line

`drawToken(room,g,(room.getxcoord()-1)*roomSize+13, (roomY)*roomSize+(roomSize/2) + 5, roomSize-27, roomSize-27);`

looks a bit messy due to the seemingly random numbers everywhere, as does this one: 

`public Monster(String name, int hp, int dmg, int drp, int imageX, int imageY, int imageWidth,int imageHeight, BufferedImage entityImage)`

## Thoughts

Dungeon Gmae was certainly not a masterpiece, but it is something that I'm proud to have worked on, and I will always remember the learning process of trying to create a video game for the first time. The lessons I learned while building this game will stay with me forever and I always enjoy looking back to see how far I've come.

[//]: # (images)
[Hydra]: ./images/hydra.png "Hydra"
[Minotaur]: ./images/minotaur.png "Minotaur"
[Elf]: ./images/elf.png "Elf"
[Wyvern]: ./images/wyvern.png "Wyvern"
[Imp]: ./images/imp.png "Imp"
[Blob]: ./images/blob.png "Blob"
[Dungeon]: ./images/dungeon.png "The Dungeon"
[Map]: ./images/map.png "The Map"
[Commands]: ./images/commands.png "The Command Interface"
[Game]: ./images/game.png "The game"
