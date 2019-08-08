# Commander Primer

An introduction to deckbuilding for the Magic: The Gathering (MTG) Commander format by Kyle Kovacs

### How to use this guide

This guide is meant for people who already know how to play Magic, but don't know anything about Commander. Throughout the guide, concepts will be introduced and explained, and any cards that are referenced will show up as images. By the end of the guide, you should have a pretty clear idea of what Commander is all about and how to build a deck. My recommendation is to read the entire guide before starting to build your deck, but if you can't wait, then following along will work as well.

## What is commander?

There are many different ways to play MTG, called **formats**. A format is defined by a specific set of deckbuilding rules. Each official format contains rules about how many cards are allowed to be in a deck, which cards are allowed to be played, how many players are in a game, how mulligans work, and sometimes a few other rules.

The main official formats are Vintage, Legacy, Modern, Pauper, Standard, Commander, Booster Draft, Sealed, and Brawl. Each of these formats has its own set of legal cards and its own restrictions on deck size. This article will not cover the details of the differences between the formats, but this highlights the fact that there are many ways to play MTG, each with its own set of specific rules and metagames.

So what is the Commander format? Let's take a look at the rules in detail.

### Commander deckbuilding rules

The deckbuilding rules are the following:

- Decks contain exactly 100 cards
- Decks are singleton (each deck can only contain one copy of a given card)
  - This rule does not apply to basic lands
- One card in the deck is designated as the **commander** of the deck
  - The commander must be a legendary creature
- All the non-commander cards in the deck must fall under the **color identity** of the commander.
  - Color identity is determined by the mana symbols on the card in either the card's cost or its rules text. For example, the card Ancient Grudge is red, but its color identity is red and green. Hybrid mana symbols, like those seen in Dovescape count as both colors when determining the card's color and when determining its color identity. Hence, Dovescape is blue and white, and its color identity is blue and white.

    > Note that mana symbols in reminder text do not count as mana symbols in a card's rules text. Example: the _Extort_ mechanic, as seen in Blind Obedience does not change a card's color identity. Blind Obedience is white, and its color identity is white.

  - Of course, the cards in the deck do not have to exactly match the color identity of the commander. So if a deck's commander were blue, red, and black, then the deck could have cards that are just blue, cards that are red and black, cards that are just black, etc.
  
| Ancient Grudge | Dovescape | Blind Obedience |
|-|-|-|
| ![Ancient Grudge][Ancient Grudge] | ![Dovescape][Dovescape] | ![Blind Obedience][Blind Obedience] |

Your commander is usually what gives your deck its flavor. Most decks are structured such that the cards all interact well with the abilities of the deck's commander. Later on in the guide, we will explore what this means and how it works.

In addition to the deckbuilding rules, there are some in-game rules specific to Commander.

### Commaner game rules

The relevant game rules are the following:

- Players start at 40 life
- You may not have known it, but in every game of MTG there is a zone called the **command zone**. This is where commanders live at the start of the game, and it's where they normally return to when they die.

  > Note, the command zone is also used for other things with which you may be familiar, such as planeswalker emblems and conspiracies.

- You may cast your commander from the command zone as if it were in your hand.
- Any time a commander you own would change zones, you may have it go to the command zone instead of whatever zone it would have gone to. This means, for example, that if your commander is on the battlefield and it is destroyed, you may put it in the command zone instead of in your graveyard. Likewise, if your commander is in your graveyard (perhaps because you chose not to return it to the command zone after it died) and it would be exiled, you may choose to return it to the command zone instead.

  > Keep in mind that a commander that returns to the command zone when it is destroyed doesn't actually die. Since moving to the command zone is a replacement effect, the commander never enters the graveyard, and so never actually triggers any "whenever a creature dies..."-type abilities.

- Every time you cast your commander from the command zone, it costs 2 more generic mana to cast for each time you have cast it from the command zone that game. This is often called the **commander tax**.
- If a player is dealt 21 damage (over half their starting life total) by a single commander, that player loses the game as a state-based action.
  - This so-called **commander damage** is tracked across the whole game, even if the damage-dealing commander leaves and re-enters the battlefield many times.
  - Noncombat damage also counts as commander damage.
- Each player gets 1 free mulligan (you can keep 7 cards after your first mulligan, then 6 after your second, etc.)
- The player who goes first does not skip their first draw step

Commander is best played with 4 players at a time. If a player loses the game, all cards owned by that player cease to exist (from the game's perspective) and the game continues on with the remaining players. If a player wins the game, the game ends and all other players lose.

### Why Commander?

A big part of what makes the format fun is the in-game politics. Some games play out relatively evenly, while other games see one player gain an early advantage and get teamed up on. The fun of commander is that even though your deck has the same cards in it, no two games play out the same way. Often in formats like Standard, which has a very narrow metagame, matchups can be deterministic and the same matchup will often play out the same way. This does not mean that Standard is boring, but it's definitely a different feeling and Commander has such a wide variety of things going on that it never seems to get boring.

> **History Note**: Commander is often called Elder Dragon Highlander (EDH). This is a reference to 2 things. First, when Commander was invented, the only legal commanders were the five Elder Dragons, pictured below. Second, the movie _Highlander_ popularaized the phrase "there can only be one," which refers here to the singleton nature of the format. Since all the Elder Dragons have 7 power, the commander damage rule was set at 21 to account for 3 hits from an Elder Dragon.
>
> | Arcades Sabboth | Chromium | Nicol Bolas |
> |:-:|:-:|:-:|
> | ![Arcades Sabboth][Arcades Sabboth] | ![Chromium][Chromium] | ![Nicol Bolas][Nicol Bolas] |
> | **Vaevictis Asmadi** | **Palladia-Mors** |
> | ![Vaevictis Asmadi][Vaevictis Asmadi] | ![Palladia-Mors][Palladia-Mors] |

### So, what is Commander?

Commander is **_THE_** casual format. Commander is where you can experiment. Your deck can be whatever you want it to be. You can play weird, random cards printed in 1998 that aren't good enough for Modern. Also, the decks are a lot less consistent in general, because your deck is 100 cards instead of 60, and you only have 1 copy of each. This means that it's a lot less about curving out in the first few turns. It's a lot harder to deprive 3 opponents of resources. It's much more difficult to kill people on turn 3 with simple combat damage. The tight, competitive style of other constructed formats is broken down and replaced with a relaxed attitude of fun for the sake of fun.

Now that we've covered what Commander is and how it works, it's time (finally!) to talk about building a deck.

## How to build your deck

This section will talk about how to build your commander deck, from how to start, to where to look for inspiration, to what things to do or avoid.

### Starting out

[Gatherer] is the first website that we will introduce. Gatherer is the official MTG card database, and it has some powerful search tools built into it. Let's take a look at what you can do with it.

> **Note**: Gatherer has all the up-to-date official errata information for every card ever printed. The _official_ rules text of cards is not what is printed on the card, but what it says in Gatherer. This is the official policy, because sometimes the rules of the game change. For some examples, take a look at the cards in the table below. Ancestral Recall used to say "Draw 3 cards or force opponent to draw 3 cards," but it has been changed to say "Target player draws 3 cards" in accordance with the new templating standards. According to some old version of the rules, these things called "mono artifacts" had to be tapped to be used. They later realized that just templating the mono artifacts as regular artifacts with activated abilities made more sense. Glasses of Urza is a great example (see below).
>
> | Old Ancestral Recall | New Ancestral Recall | Old Glasses of Urza | New Glasses of Urza |
> |:-:|:-:|:-:|:-:|
> | ![Ancestral Recall Beta][Ancestral Recall Beta] | ![Ancestral Recall][Ancestral Recall] | ![Glasses of Urza Beta][Glasses of Urza Beta] | ![Glasses of Urza][Glasses of Urza] |
>
> Often times the rules change and cards are not re-printed. Things like "when this creature comes into play" have been changed to "when this creature enters the battlefield." So if you're ever confused about a wording, go to Gatherer to see the official wording updated in accordance with the current rules. Many cards also have rules clarifications detailed in their Gatherer page. Look towards the bottom of [this page][Liliana Gatherer] under "Rulings" for an example.

So what do we do with Gatherer? First of all, we can search for a given type of spell. Let's say we are interested in seeing if there's a way to couter spells outside of blue. In the Gatherer search page, enter `AND "counter target" spell` into the Rules Text filter, and `NOT blue` in the Colors filter. Use the Add buttons to add the search criteria. [This link][non-blue-counters] is what you should see. I recommend switching the view to "Visual Spoiler" instead of "Standard." There are some screenshots below to help out.

| Quotes tell the database to use the exact order of words; unquoted terms can show up anywhere on the card | Search criteria are shown to the right. Press the Search button to search |
|-|-|
| ![non-blue-counters-search][non-blue-counters-search] | ![non-blue-counters-terms][non-blue-counters-terms] |

Notice that a lot of the cards in these results actually do contain blue mana symbols becuase of activated abilities and thanks to the _Devoid_ mechanic. In the next example we will look at one way to mitigate these false positives.

You can ask Gatherer for all kinds of things. Let's say we are building a deck with a green and white commander and we want to find some lands that tap for both green and white mana. We can use the following search criteria:

| {W} is the white mana symbol and {G} is the green mana symbol | We need to exclude the other mana symbols in order to find legal cards | We want a land that contains these symbols in its rules text |
|-|-|-|
| ![green white lands search][green white lands search] | ![green white lands exclude][green white lands exclude] | ![green white lands terms][green white lands terms] |

Here we make sure to exclude lands that contain the blue, red, and black mana symbols, becuase those would be illegal in a deck with a commander whose color identity is only green and white. You should end up at [this page][green white lands], which has over 29 results. Wow, that's a lot of green-white dual lands!

> **NOTE**: keep in mind that there may be other non-obvious factors. In the example above, we do not see lands like Command Tower, Gemstone Mine, Cascading Cataracts, or Painted Bluffs, even though they would be legal in an only green and white deck.
>
> | Command Tower | Gemstone Mine | Cascading Cataracts | Painted Bluffs |
> |-|-|-|-|
> | ![Command Tower][Command Tower] | ![Gemstone Mine][Gemstone Mine] | ![Cascading Cataracts][Cascading Cataracts] | ![Painted Bluffs][Painted Bluffs] |

That should explain, for the most part, how to use Gatherer effectively to get the information you want. We saw an example where some extra cards we probably didn't want showed up, and we saw an example where some cards we probably wanted didn't. You may have to fiddle around a bit or make multiple searches to find what you want, but your searches don't have to be well-crafted masterpieces to get useful information.

Now that we know how to find cards meeting specific needs, let's talk about starting a deck. There are a few approaches to start building a commander deck, and the next few sections will talk about each method.

#### Find a commander that you like

Look at some legendary creatures. If you search Gatherer for all legendary creatures, you will find that there are many hundreds of options to choose from. You may not have time to read all of them, but maybe scroll through and browse around. Ask your friends. Look online. The point is to try and find a commander that grabs your attention. A good commander is one that you see potential in. There are some legendary creatures (see below) that just don't really do anything; these do not make good commanders.

| Barktooth Warbeard | Gabriel Angelfire | Gallowbraid | Sir Shandlar of Eberyn |
|-|-|-|-|
| ![Barktooth Warbeard][Barktooth Warbeard] | ![Gabriel Angelfire][Gabriel Angelfire] | ![Gallowbraid][Gallowbraid] | ![Sir Shandlar of Eberyn][Sir Shandlar of Eberyn] | |

If you want to build a deck around a particular commander that has no abilities other than being a 6/5 for 7 mana, then nobody is going to stop you... but it probably won't feel like a commander deck. You want your deck to focus around the commander's abilities (you usually don't want your deck to rely entirely on your commander, but we'll get into that more later on), so it is important to have a playstyle in mind when you think about the commander. For example, look at the table below. Each of these commanders has a pretty obvious playstyle that works well.

| Uril, the Miststalker | Sliver Legion | Sram, Senior Edificer |
|-|-|-|
| ![Uril, the Miststalker][Uril, the Miststalker] | ![Sliver Legion][Sliver Legion] | ![Sram, Senior Edificer][Sram, Senior Edificer] |
| Uril wants a deck that focuses on creature auras | Sliver Legion wants a deck that focuses on playing lots of slivers | Sram wants a deck centered around auras, equipment, and vehicles |

So go exploring and see what catches your fancy. Sometimes it can be interesting to play a commander the non-obvious way. For example, you could play Sliver Legion as your commander, have no slivers in the deck, but play cards that turn your creatures into slivers. Every commander brings something to the table &mdash; you just have to decide what to eat.

#### Pick a style that you like

Another good way to find a direction for your deck is to take the opposite approach. Start with your favorite thing to do in Magic. Maybe you really like creatures with flying and you want to make a fliers deck. Maybe you like playing artifacts. Maybe your favorite thing is reanimating creatures from the graveyard. Whatever it is that you like, you probably already know some cards that could potentially fit in your deck. All you need to do is find a commander to facilitate things.

At this stage, it might be best to just go to Google and look for "popular reanimator commanders" or "spellslinger commanders." You can also search on Gatherer for legendary creatures that have certain keywords in them, like "instant or sorcery," "double strike," "return to owner's hand," or "discard."

> It is worth noting that when you search Gatherer, you will need to use the most updated wordings. Searching for "comes into play" will not work, but searching "enters the battlefield" will.

Finding a commander that facilitates your style of play can be tricky, but whatever you want to do, there is probably a commander out there that can support it.

#### Work with what you've got

One final way to come up with a commander and a direction for your deck is to just look through the collection of cards that you probably have lying around. Collect up all your legendary creatures and take a look at what they do. Find some cards you already own that you think are cool and start grouping them up together. Inspiration comes from getting your hands dirty, so to speak, so just get in there and ideas will come to you. Using cards you already own can save you money and it can be satisfying to know that you built your deck up from what you had.

### Remember your goal: to have fun

Now that you have a starting point, it's important to remember a few things. When you play Commander, your goal is to have fun. Different people think of this in different ways, but let's talk about how to maximize fun from a couple different angles.

#### Don't play combo

As fun as you might think it is to use Elvish Spirit Guide to Flash in Protean Hulk on turn 1 and win the game with Carrion Feeder, Karmic Guide, Academy Rector, Grand Abolisher, Animate Dead, Mikaeus, the Unhallowed, and Walking Ballista (see following note for details), it's certainly not fun for any of your opponents, and after you do this a few times, losing all your friends in the process, you will realize that it is, in fact, not fun.

> Protean Hulk has long been a combo piece for competitive EDH players, and it has many, many chains that can win the game instantly when its ability triggers.
>
> | Island | Elvish Spirit Guide | Flash | Protean Hulk |
> |:-:|:-:|:-:|:-:|
> | ![Island][Island] | ![Elvish Spirit Guide][Elvish Spirit Guide] | ![Flash][Flash] | ![Protean Hulk][Protean Hulk] |
> | **Carrion Feeder** | **Karmic Guide** | **Academy Rector** | **Grand Abolisher** |
> | ![Carrion Feeder][Carrion Feeder] | ![Karmic Guide][Karmic Guide] | ![Academy Rector][Academy Rector] | ![Grand Abolisher][Grand Abolisher] |
>
> After playing an Island and exiling Elvish Spirit Guide, step 1 in the combo is to play Flash to get Protean Hulk into play. Then when you don't pay Protean Hulk's mana cost, it dies, triggering its ability. You use the ability to search up Karmic Guide and Carrion Feeder, which allows you to reanimate Protean Hulk and get a sacrifice outlet into play.
>
> Step 2 is to activate Carrion Feeder's ability, sacrificing Protean Hulk again. This time, you search for Academy Rector and Grand Abolisher.
>
> | Animate Dead | Mikaeus, the Unhallowed | Walking Ballista |
> |-|-|-|
> | ![Animate Dead][Animate Dead] | ![Mikaeus, the Unhallowed][Mikaeus, the Unhallowed] | ![Walking Ballista][Walking Ballista] |
>
> Step 3: sacrifice Academy Rector using Carrion Feeder, and search for Animate Dead. Choose Protean Hulk as your target for Animate Dead.
>
> For step 4, sacrifice Protean Hulk one last time, now searching for Mikaeus, the Unhallowed and Walking Ballista. When Walking Ballista enters the battlefield, it will immediately die, but it has Undying, thanks to Mikaeus, the Unhallowed. This means it will come back to the battlefield with a +1/+1 counter on it. Now just activate it's second ability to deal 1 damage to an opponent. Walking Ballista dies again, but comes back again because it has Undying. Do that 119 more times and you win the game. Oh and you have Grand Abolisher out to protect you, just in case somebody even thinks about messing with your amazing, totally original, fun, interesting, cool combo that you found on the internet.

Not all infinite combos are this convoluted, of course, and they don't always happen on turn 1. But that doesn't make them any more fun. Yes, Magic has combos. Yes, they are cool. But leave infinite combos at the door when you come to play Commander, because nobody likes playing a game for 45 minutes only for someone to "accidentally win" out of nowhere.

#### Don't be a troll

Some people like to play cards just becuase they think it's cool, funny, or annoying. Common cards in this category include Warp World, Scrambleverse, Dimensional Breach, and Cataclysm.

| Warp World | Scrambleverse | Dimensional Breach | Cataclysm |
|-|-|-|-|
| ![Warp World][Warp World] | ![Scrambleverse][Scrambleverse] | ![Dimensional Breach][Dimensional Breach] | ![Cataclysm][Cataclysm] |

It's not that you shouldn't play these cards, it's just that you should have a good reason to. "Because it's funny," or "because I like annoying my opponents" are not good reasons. Cataclysm can be very good in a deck that benefits from mass land destruction. Scrambleverse can greatly benefit you if you have far fewer permanents than everyone else. These types of cards generally mess with the game quite a bit though, so it's probably not a good idea to go throwing them around unless your deck is really built around them.

#### Non-linear is better

In general, you are less likely to get bored when you play a "non-linear" deck. "Linear" decks do the same thing every game, and thus can get stale after many games. The linearity of a deck is not really measurable, but with experience, you will figure it out. A good way to decrease linearity is to add more interactive spells.

### Deckbuilding steps

Now that you have a starting point, it's time to start building the deck! Commander is sometimes called "battle-cruiser Magic" because of the fact that it is slower than 1-on-1, and therefore allows for more big, flashy plays. In Legacy, for example, casting a big 7-mana creature for its full cost is almost always impossible &mdash; you may not even survive long enough to play 7 lands. In Commander, it's much more likely that you'll survive that long because there are a bunch of other things going on. The pace of the game is a bit slower, allowing you to play some more expensive cards. That being said, you can't just shove 99 huge cards into a deck and hope to have any fun. We're going to talk about how to balance the deck properly.

In competitive, 60-card, non-singleton formats, you want your deck to be as consistent as possible. Most good 60-card constructed decks have 4 copies of all their important cards. This is not a hard rule, of course, as some decks have many ways to search out specific creatures, Vintage has a restricted list that only allows 1 copy of some cards, control decks that draw a lot of cards tend to cut back to 2-3 copies of some important cards, etc. In Commander you can only play 1 copy of every card, but this doesn't mean your deck can't be consistent! We will talk about how to look for redundancy and how to build your deck in such a way that it does what you want it to do.

Keep in mind, your first deck may not be that good. After all, if you haven't played Commander a lot, you probably won't know exactly how it goes. This is okay, because your deck can evolve over time and as you play more and see more decks, you will discover more and more about what makes a good deck.

The following steps will guide you through the deckbuilding process. Keep in mind that they don't necessarily apply in order, but that it's all a creative process and you can always change things around.

Let's get started.

#### Step 1: Think about it

If you used the method of choosing a commander to build around, you probably have some sort of idea about what cards go with it. If you're playing Talrand, Sky Summoner, you're probably thinking of mono-blue instants and sorceries. If you picked Animar, Soul of Elements, you're probably thinking mostly creatures (probably ones that have few colored mana symbols in their costs). If you're interested in Rakdos, the Showstopper, you're probably thinking about Demons, Devils, and Imps.

| Talrand, Sky Summoner | Animar, Soul of Elements | Rakdos, the Showstopper |
|-|-|-|
| ![Talrand, Sky Summoner][Talrand, Sky Summoner] | ![Animar, Soul of Elements][Animar, Soul of Elements] |![Rakdos, the Showstopper][Rakdos, the Showstopper] |

If you're going with the method of choosing a playstyle, what are the best cards? No doubt you already have some in mind. Use Gatherer to find some more.

#### Step 2: Start a decklist

Now that some ideas are swirling around in your brain, it's time to write them down.

[MTGGoldfish] is the second resource we will introduce. It is an amazing site that can satisfy most of your MTG needs, but for now we'll just talk about the decklist feature.

Go onto MTGGoldfish and create an account if you don't have one already. Then navigate to `Tools > My Decks` at the top of the site.

| Click on `Tools > My Decks` to access the Deck Manager |
|-|
| ![My Decks][My Decks] |

This should bring you to the Deck Manager page. From here, click on `Create New Deck` to start a new decklist.

| The Deck Manager page. Use the `Create New Deck` button to start your first decklist |
|-|
| ![Deck Manager][Deck Manager] |

You will then be on the Deck Editor page, where you can begin to assemble your decklist. You should give your deck a good name (often just the name of the commander) so that you can find it later. The `Description` box can be useful to write notes for yourself while you are constructing the deck, and it can be good after the deck is finished as well. For the `Format`, select "Free Form" for now; later on you can change it to Commander. You can check the `Private` box if you don't want other people to see your deck. The `Use Specific Card Versions` box is not important right now.

| The Deck Editor page. Fill out the information at the top first |
|-|
| ![Deck Editor][Deck Editor] |

Now it's time to add some cards. If you begin typing the name of a card into the `Card` box, suggestions should show up (see images below). Select a suggestion and click `Add Card`. The card's name will be added to the decklist on the left. You can also just type the names of cards into the decklist, and as long as they are formatted properly and spelled correctly, it will also work. Now click `Update Preview` to update the preview of the deck.

| Type in a card name and select a suggestion | Click the `Add Card` button to add it |
|-|-|
| ![Suggestion][Suggestion] | ![Add Card][Add Card] |

The deck preview on the right shows all the cards in the list and their prices. It also groups the cards by type. The total cost of the deck will appear in the top right.

| Use the `Update Preview` button to update the decklist so that you can see your cards |
|-|
| ![Update Preview][Update Preview] |

> **Note**: MTGGoldfish uses both the prices of real cards and the Magic: The Gathering Online (MTGO or MODO \[its old name: Magic Online with Digital Objects\]) prices. The orange numbers are the online prices in Event Tickets. Discussion of MTGO is out of the scope of this guide.

When you hover your cursor over the name of a card in the preview, a picture of it should appear. You can also add cards to the sideboard by clicking on the `Sideboard` tab on the top of the decklist. Commander decks don't have sideboards, though, so this is usually not important unless you want another section in your deck while you're working on it.

Remember to click `Save` to save your deck.

Add all the cards you thought of in Step 1. Go crazy. Just add a bunch of stuff. It's best to have everything laid out in front of you so that you know what you're working with. The next few steps will guide you through what else to add beyond your initial thoughts.

#### Step 3: Get some inspiration

Now that you have a place to put your cards, and you've entered in a few things (maybe you have 150 card ideas already, and maybe you've just go 6 or 10; it doesn't matter), it's time to go deeper.

[EDHREC] is our third website. EDHREC is a great site to look to for inspiration. Type the name of your commander into the search bar at the top and click the search button or click a suggestion when it comes up.

| Enter the name of a commander on EDHREC |
|-|
| ![EDHREC Search][EDHREC Search] |

There's a lot of stuff on the page. Ignore most of it.

Scroll down to where it has pictures of Magic cards. Ah, that's better. EDHREC pulls data from a number of different websites and uses it to compile information specific to Commander. If you don't mark your deck as private, then it will probably end up in the EDHREC database. As you scroll down the page, you'll see the sections `New Cards`, `Signature Cards`, `Top Cards`, `Creatures`, `Instants`, `Sorceries`, `Artifacts`, `Enchantments`, `Planeswalkers`, and `Lands`. Each section is populated with the most popular cards in that category based on data from other decks.

You won't be copying your deck directly from EDHREC, but you will most definitely find cards here that you like and that you didn't know about before. Plus the approximate prices are shown below the cards, so you can tell if something is way out of budget or not. Seeing some of these card suggestions will get your creative juices flowing even more, and you should record all the cards that you think look interesting or that you might want to play using your MTGGoldfish decklist. Don't worry about filling up the decklist; the general approach here is amass, then trim.

#### Step 4: Nitty-gritty searches

Often what will happen at this point, is you will see a card that works particularly well with a certain commander, and you will be thinking, hey, wouldn't it be nice if there were more cards like that? For example, you may have been building a deck around the Prowess mechanic, but you just realized that artifacts and enchantments trigger it, and before you were only looking for instants and sorceries. Time to head back to Gatherer!

Searching Gatherer is free, so do it a lot. Get specific. Add 100 filters. Go crazy. There are thousands of Magic cards, but there are only three instants that are both white and red and reference both creatures and opponents and have a converted mana cost of exactly 3.

> **Remember [the banlist]!** There are certain cards that aren't allowed in Commander. Make sure you aren't selecting any cards on the list. It's only about 75 cards.

#### Step 5: Deck balance and staples

Now that your deck is shaping up and you've collected a bunch of interesting cards, it's time to talk about how to actually build the deck. A good mix for commander decks is usually about 50 mana sources, about 10 generic catch-all spells, and about 40 on-theme fun cards.

This step will introduce a lot of cards, including some "format staples" that show up everywhere. Don't be afraid to use popular cards; they are popular for a reason!

##### Ramp

You need mana to cast spells. In Commander, "ramp," or getting mana sources onto the battlefield faster than just one land per turn, is very important. Having more mana means casting more spells, which is always more fun. Depending on the average cost of spells in your deck, and on other factors, it's usually correct to have about 40 lands and about 10 nonland ramp cards. Nonland ramp comes in many different forms. Cards like Rampant Growth, Cultivate, Kodama's Reach, and Explosive Vegetation are great ways to get extra lands out onto the battlefield.

| Rampant Growth | Cultivate | Kodama's Reach | Explosive Vegetation |
|:-:|:-:|:-:|:-:|
| ![Rampant Growth][Rampant Growth] | ![Cultivate][Cultivate] | ![Kodama's Reach][Kodama's Reach] | ![Explosive Vegetation][Explosive Vegetation] |

Artifact ramp is popular if you don't have access to green (or even if you do). Great cards include Thran Dynamo, Diamonds (there is one for each color), Commander's Sphere, Chromatic Lantern, Coalition Relic, Signets (all ten color pairs), and, of course, the omnipresent and all-powerful Sol Ring.

| Thran Dynamo | Charcoal Diamond | Sky Diamond |
|:-:|:-:|:-:|
| ![Thran Dynamo][Thran Dynamo] | ![Charcoal Diamond][Charcoal Diamond] | ![Sky Diamond][Sky Diamond] |
| **Commander's Sphere** | **Chromatic Lantern** | **Coalition Relic** |
| ![Commander's Sphere][Commander's Sphere] | ![Chromatic Lantern][Chromatic Lantern] | ![Coalition Relic][Coalition Relic] |
| **Simic Signet** | **Azorius Signet** | **Sol Ring** |
| ![Simic Signet][Simic Signet] | ![Azorius Signet][Azorius Signet] | ![Sol Ring][Sol Ring] |

In addition to searching out lands and utilizing "mana rocks," there are also mana doublers, like Crypt Ghast, Zendikar Resurgent, Caged Sun, and Extraplanar Lens. These can be especially powerful, but tend to draw more removal from your opponents (because they are so good).

| Crypt Ghast | Zendikar Resurgent | Caged Sun | Extraplanar Lens |
|-|-|-|-|
| ![Crypt Ghast][Crypt Ghast] | ![Zendikar Resurgent][Zendikar Resurgent] | ![Caged Sun][Caged Sun] | ![Extraplanar Lens][Extraplanar Lens] |

##### Removal

As far as catch-all spells, it's a good idea to have card draw, removal, and answers to other people's threats. Having some solid removal spells like Path to Exile/Swords to Plowshares, Rapid Hybridization/Pongify, and Oblivion Ring/Banishing Light is a good idea. You want to be able to interact with other people's stuff.

| Path to Exile | Pongify | Oblivion Ring |
|:-:|:-:|:-:|
| ![Path to Exile][Path to Exile] | ![Pongify][Pongify] | ![Oblivion Ring][Oblivion Ring] |
| **Swords to Plowshares** | **Rapid Hybridization** | **Banishing Light** |
| ![Swords to Plowshares][Swords to Plowshares] | ![Rapid Hybridization][Rapid Hybridization] | ![Banishing Light][Banishing Light] |

It's also a good idea to have some artifact and enchantment removal. Good cards are ones that are versitile, so anything that says "target permanent" like Vindicate or Anguished Unmaking is good. Cards like Violent Ultimatum and Decimate are good because they can hit multiple things at once. Modal removal spells like Crush Contraband and Casualties of War are even better because you don't have to have more than one target. Also, keep in mind that instants are usually better than sorceries, even if they cost a bit more.

| Vindicate | Violent Ultimatum | Crush Contraband |
|:-:|:-:|:-:|
| ![Vindicate][Vindicate] | ![Violent Ultimatum][Violent Ultimatum] | ![Crush Contraband][Crush Contraband] |
| **Anguished Unmaking** | **Decimate** | **Casualties of War** |
| ![Anguished Unmaking][Anguished Unmaking] | ![Decimate][Decimate] | ![Casualties of War][Casualties of War] |

Another important form of removal is so-called "board wipes" or "wraths" (named after Wrath of God). These are very important because when things get out of hand, they act as a hard reset. Damnation is another popular choice. Some wraths are damage-based, like Blasphemous Act. Evacuation doesn't kill creatures, but it can eliminate tokens or just clear the board temporarily.

| Wrath of God | Damnation | Blasphemous Act | Evacuation |
|-|-|-|-|
| ![Wrath of God][Wrath of God] | ![Damnation][Damnation] | ![Blasphemous Act][Blasphemous Act] | ![Evacuation][Evacuation] |

It's sometimes important to have a wrath for artifacts, enchantments, and/or planeswalkers as well. Austere Command and Merciless Eviction can selectively destroy or exile a certain type of permenant, and Back to Nature and Shatterstorm are great ways to clear away all artifacts or enchantments.

| Austere Command | Merciless Eviction | Back to Nature | Shatterstorm |
|-|-|-|-|
| ![Austere Command][Austere Command] | ![Merciless Eviction][Merciless Eviction] | ![Back to Nature][Back to Nature] | ![Shatterstorm][Shatterstorm] |

Counterspells can also be important, but are usually only accessible if your commander is blue. Great counterspells include Counterspell, Summary Dismissal, Cryptic Command, and Draining Whelk, but there are, of course, many others.

| Counterspell | Summary Dismissal | Cryptic Command | Draining Whelk |
|-|-|-|-|
| ![Counterspell][Counterspell] | ![Summary Dismissal][Summary Dismissal] | ![Cryptic Command][Cryptic Command] | ![Draining Whelk][Draining Whelk] |

##### Card draw

Besides removal, you want to have some card draw. There are many, many ways to draw extra cards, whether it's Skullclamp, Greed, Wheel of Fortune, or just straigt-up Opportunity, you need some way to refill your hand once you've run out of spells to cast. Don't underestimate the power of filtering, looting, scrying, or just plain drawing cards.

| Skullclamp | Greed | Wheel of Fortune | Opportunity |
|-|-|-|-|
| ![Skullclamp][Skullclamp] | ![Greed][Greed] | ![Wheel of Fortune][Wheel of Fortune] | ![Opportunity][Opportunity] |

##### Multi-function spells

Commander is all about value. Cards that can serve multiple purposes or cards that have repeatable effects are especially valuable. Mind Stone, Hedron Archive, and Dreamstone Hedron are great examples of multi-function cards. They can be used to ramp you up, and then when you don't need them anymore (or when you're desperate for more cards) you can cash them in. 

| Mind Stone | Hedron Archive | Dreamstone Hedron | 
|-|-|-|
| ![Mind Stone][Mind Stone] | ![Hedron Archive][Hedron Archive] | ![Dreamstone Hedron][Dreamstone Hedron] |

Repeatable value over time is also very good to have. This can look like many things. For example, the Siege cycle cards trigger every turn. These types of cards get better and better the longer they sit out on the battlefield. Other cards that trigger over and over or can be used over and over, like Lifecrafter's Bestiary, Deathreap Ritual, Soul Warden, or Sensei's Divining Top can lead to a big advantage if they stay on the battlefield for a while. Cards like this are like risk-free investments. They just sit around and accumulate value.

| Citadel Siege | Monastary Siege | Palace Siege |
|:-:|:-:|:-:|
| ![Citadel Siege][Citadel Siege] | ![Monastary Siege][Monastary Siege] | ![Palace Siege][Palace Siege] |
| **Outpost Siege** | **Frontier Siege** | **Lifecrafter's Bestiary** |
| ![Outpost Siege][Outpost Siege] | ![Frontier Siege][Frontier Siege] | ![Lifecrafter's Bestiary][Lifecrafter's Bestiary] |
| **Deathreap Ritual** | **Soul Warden** | **Sensei's Divining Top** |
| ![Deathreap Ritual][Deathreap Ritual] | ![Soul Warden][Soul Warden] | ![Sensei's Divining Top][Sensei's Divining Top] |

#### Step 6: Control yourself

It can be fun to include one or two funny or especially narrow cards that act kind of like "gotcha!" cards, but don't go throwing more than a couple into your deck. Common examples include Mana Tithe, Stifle, or Ricochet Trap. These cards aren't actually that good because they often don't do a whole lot and they require very specific situations to be good.

| Mana Tithe | Stifle | Ricochet Trap |
|-|-|-|
| ![Mana Tithe][Mana Tithe] | ![Stifle][Stifle] | ![Ricochet Trap][Ricochet Trap] |

#### Step 7: Organization

By now you should have many more cards in your MTGGoldfish decklist that you are interested in. With the collection phase over, it's time to get organized.

[Deckstats] is the next tool to introduce. Deckstats provides a nice tool for grouping cards into categories. Start by going to the site and clicking `Build a new deck`.

| Click on `Build a new deck` to start creating a decklist |
|-|
| ![Deckstats Home][Deckstats Home] |

Back on your MTGGoldfish decklist, once you've saved it, you should see the option to `Download` the decklist. Click that button to download a text file containing your deck. Then on Deckstats, use the `Paste/upload a deck list` button to upload your MTGGoldfish list.

| Use the `Download` button to get your decklist from MTGGoldfish | Click on `Paste/upload a deck list` and then choose the file you just downloaded |
|:-:|:-:|
| ![MTGGoldfish Download][MTGGoldfish Download] | ![Direct Entry][Direct Entry] |

| Select the `Upload` tab and upload your downloaded decklist |
|-|
| ![Paste or Upload to Deckstats][Paste or Upload to Deckstats] | 

Now you should see all the cards show up. Scroll down to the bottom of the list and use the `Create new subsection` button to create a new category of card for your deck. For example, create a category called "Ramp."

There's a slightly funny thing with Deckstats where the checkboxes do not show up at first. Go to the bottom of the list and click the `Select:` button to reveal a column of checkboxes next to all the card names.

| Create a new category within your deck, use the `Select:` button, and use the `Edit(#)` button |
|-|
| ![New Subsection][New Subsection] |

Now that you have an empty "Ramp" category, look through all the cards in the list and find the ones that are included for the purpose of ramp. For each card, click the checkbox at the far left of the row. Remember that you can see a preview of the card by hovering your cursor over a card name.

Once all the ramp cards are selected, use the `Edit(#)` button to move them to the "Ramp" category. Click `Edit(#)`, change the subsection to "Ramp," and click `Update`.

> Remember to click the select `None` button after you're done moving a group to a new category to un-check all the boxes.

Now all the ramp cards in your deck are in one place. Continue to do this process with new categories until all the cards in the deck are categorized. Create whatever categories you think are useful. For example, you could have categories like "Card Advantage," "Removal," and "Big Bombs."

> You can also drag cards between categories.

The purpose of this exercise is to get you thinking about why you have the cards you have. It is an excellent way to realize that you are trying to put 45 spells that do the same thing in your deck and that you should probably cut some of them. Think about the ratios of the categories. Do you want way more creatures than spells? Is there a reason to have a certain critical mass of artifacts? It will all depend on your commander, your playstyle, and maybe your budget.

#### Step 8: Trim, trim, trim

You will probably have a lot more than 100 cards picked out and categorized at this point. That's okay, but you're going to have to trim it down. Think hard about which cards are the best and which ones are just alright. You won't be able to include everything. Take your time and make good decisions, but don't kill yourself over it too much. You can always change your deck later.

### Other things to keep in mind

Your budget may get in the way. This is normal. Sometimes it is useful to make a separate MTGGoldfish decklist ("My Commander - Wishlist" or something) to keep track of the cards you really want but that may be too expensive for now.

Sometimes people like to make decks that follow a particular theme. Some crazy ones include "all nonland cards in the deck depict a character wearing a cape or a cloak," "All cards in the deck start with the letter 'S,'" and "All spells in the deck cost exactly 4 mana." It is probably unwise to build your very first deck like this, as the deck may not be that good and you will likely have a bad experience with it. But if that's the kind of deck you want, then it's perfectly fine. It does feel pretty good to win a game and then tell people, "oh yeah by the way, this is 'of'-tribal. All my nonland cards are named 'xxx of xxx.'" But this is an advanced form of memery that should be avoided on your first go around.


## Pick card versions

Once you've cut down to 100 cards (99 + your commander) and transferred the Deckstats list back over to MTGGoldfish, you'll want to select card versions. If you go back to editing your MTGGoldfish decklist, you will see the option to `Use Specific Card Versions.` Check this box. Then you can go through the cards in your deck and choose which printing of the cards you want to buy. Simply add the three-letter set symbol to the end of the card name in the list. For example, `1 Tranquil Thicket` would instead become `1 Tranquil Thicket [CMA]` if you want the Commander Anthologies version, and `1 Tranquil Thicket [ONS]` if you want the Onslaught version. Often times you won't care about the printing, and you can skip this step if you want. But sometimes it can be fun to get alternate art cards or certain printings that you like.

### What are the versions of a card?

Head over to [Scryfall] to check for alternate printings of cards. Type in the name of a card and then select the matching card out of the results (there may be other cards that show up). Use the `View all prints ->` option on the right-hand side of the single card page to see all the printings of a particular card.

| Search for a card on Scryfall |
|-|
| ![Scryfall Search][Scryfall Search] |

| Select the card you want and click `View all prints->` on the right |
|-|
| ![Scryfall Single][Scryfall Single] |

| Now you can see all the printings of the card |
|-|
| ![Scryfall All][Scryfall All] |

You can also do this on MTGGoldfish by just searching for the card and looking at the printings list on the right hand side of the page. The orange prices are for Magic online, so you can ignore those. Any card that does not have a blue price is not available in paper, so you can also ignore those.

| MTGGoldfish has all the printings and their prices |
|-|
| ![MTGGoldfish Printings][MTGGoldfish Printings] |

Searching on MTGGoldfish and pressing Enter or clicking the magnifying glass symbol instead of selecting an option from the drop-down suggestion list will also take you to a page with all the printings which you can hover over to see what the card looks like.

| MTGGoldfish shows all the printings of a card if you don't select a single one |
|-|
| ![MTGGoldfish List][MTGGoldfish List] |

Using these methods, you can figure out which versions of cards you want. If you update your MTGGoldfish decklist with the proper versions, then you'll be able to see the price updated there as well.

## Time to buy the cards

You built your first Commander deck. Whew. Now it's time to buy some cards!

The last website we need for this guide is [TCGPlayer]. This is the best online card marketplace to buy your cards from. There are other sites, but this one is usually the most trusted and the largest.

### Use mass entry

Download your MTGGoldfish decklist and then copy the contents of the downloaded file. Go to TCGPlayer and look towards the bottom of the webpage for `Mass Entry`.

| This is the bottom of the TCGPlayer homepage. Use `Mass Entry` to enter a lot of cards |
|-|
| ![Mass Entry Link][Mass Entry Link] |

Paste your decklist into the mass entry box and click `Add to Cart`. It may take some time to add 100 items to your cart, so be patient.

### Optimize your cart

Now you should be on your shopping cart page. Press the big blue button that says `Optimize Your Cart!`. This will bring you to the cart optimizer. When items are added to your cart, TCGPlayer will select the first available card that matches the name you provided. The cart optimizer tries to use TCGPlayer's network of sellers to find you the cheapest option available in the current market.

You should now be on the cart optimizer page. If you don't care about which printings you are getting and you just want to unconditionally get the cheapest versions of your cards, go ahead and click the `Optimize` button and skip the rest of this paragraph. If you care about the printings, expand the `Show Advanced Options` tab. This will bring up a section for every item in your cart where you can select versions that you want the optimizer to look for. For each card, use the drop-down `Sets:` option to select the printings that you would be okay with getting. This can be tedious to do with 100 cards, but it's the best way to optimize your cart. Go through all the cards and un-select the printings you don't want for each card.

Now that you've done this, click the `Optimize` button.

Once it finishes, click the `Optimize` button again. It's a good idea to optimize multiple times because in my experience, the price will almost always drop after the second optimization.

After optimization, there will be three carts shown. One only uses items from TCGPlayer Direct, one only uses items from certified sellers, and the last one uses any cards. In my experience, you should just pick the cheapest one. Non-certified sellers are usually very relieable, and when they aren't they are usually very accommodating.

### Order the cards

After selecting the cart you want, go ahead and order the cards! When your packages arrive, make sure to leave reviews for the orders. If the order got there and it was correct, give 5 stars. If it wasn't correct for any reason, give them 1 star and say why you were dissatisfied. This has happened to me serveral times, and every single time the seller will contact me, refund me, send a replacement, etc. after which I delete my old review and leave a new 3-, 4-, or 5-star review. One time I got the correct $15 card and the wrong $2 card in an order. The seller refunded my entire order of $17 (not just the incorrect card) and still sent me a replacement of the $2 card. Needless to say, I updated my review to 5 stars. Magic card sellers are nice, so don't be afraid to contact them if an order is wrong. At the same time, give credit where it is due and send positive feedback to good sellers.

## Time to play the game!

Once you have your deck, it's time to play some Magic. Here are some tips:

- Use a good table.
  - A good table allows all the players to see all the cards. Round tables or square tables are the best so that everyone can face the center. Rectangular tables are less good because not everyone faces each other.
- Use sleeves.*
  - You're going to want to use card sleeves for your deck. Shuffling unsleeved cards damages them very quickly and you don't want that.
  - I recommend UltraPro Eclipse sleeves. You can get about 800 of them for around $56, so that's 7 cents per sleeve.
    - If you have cards in your deck that are worth over $50, it is a good idea to double-sleeve the deck. I recommend KMC Perfect Size sleeves as your inner sleeve. These can be bought in lots of 1000 for about $25, so that's 2.5 cents per sleeve.
  - An overall cost of 9.5 cents per sleeve times 100 cards is just $9.50 to protect your deck. That is definitely worth it in the long run.
  - Put the commander in a different sleeve than the rest of the cards! This way if you accidentally shuffle your commander into your deck, it's easy to find it.
  - Always have a few extra sleeves on hand in case one breaks.
- Use a deck box.
  - I am not that experienced with deck boxes, and the ones I use are boxes that I made out of wood or cardboard. It's possible to spend a lot of money on a good deck box, but you don't need to. Cardboard card boxes are fine, but it just depends on what you want/like.
- Buy a playmat.
  - It's essential to have a playmat if you're going to be playing on unknown surfaces. I often play at a game store and the tables seem relatively clean until you slide your sleeved cards across them a few dozen times and then try to shuffle your deck. A lot of grime can build up on the sleeves, making the deck difficult to shuffle. A playmat will eliminate this issue and it will also make playing the game more enjoyable.
  - [Inked] is a really cool place to get a custom playmat. Choose some art that you like and they'll send you a high-quality custom mat for $27. It's a great deal.
    - DO NOT PUT SEXY ANIME CHICKS WITH GIANT EXPOSED BREASTS/CLEAVAGE ON YOUR PLAYMAT! Please, just don't. It's inappropriate and uncomfortable for people around you. The same goes for your sleeves.
- Get some dice and/or counters.
  - Dice are great for tracking counters and life totals. Pick up some.
  - Tracking life totals and commander damage can be tedious. Use a notepad or an app, or whatever other way you prefer. Just make sure you have a good way to track it that everyone at the table can see.
- Find some people to play with.
  - Hopefully you have some friends. Otherwise, look for a local game store using the Wizards of the Coast [Store Locator]. Ask if they have a weekly Commander night.

*[The Professor] has some great videos on sleeves, so check out his sleeve reviews and his double-sleeving videos if you're interested.

All this equipment may seem kind of unnecessary at first, but as you play you will begin to realize how nice it is to have things squared away.

### Play a fun game

This final section will go over a few tips for having a good game when you play Commander.

#### Threat assessment

A large part of playing Commander is knowing what cards are problematic or extremely powerful. Don't use your removal on the first thing you see. Don't instantly kill someone's commander just because you can. When you spend your counterspell on something and then the next turn you lose the game, you'll be wishing you had saved the counterspell.

This is a skill that takes a long time and a lot of experience to master, but just think about it and you will learn. Instead of immediately attacking someone or casting a removal spell, ask the other players, "should we be worried about this?" You don't always want to reveal your hand, but it can be important to use politics and negotiation throughout the game. Examples include:

- "Don't use your removal now; I'm going to wipe the board next turn."
- "Somebody needs to counter this or else we will all lose."
- "We need to kill this creature before it gets too big."

#### No spite

Don't do things out of spite. It sounds like a no-brainer, but there are many times when people say "I'm going to attack you because you killed all my artifacts." That's not a good reason to attack someone. "John killed me first in the last game, so I'm going to kill him first this game" is a horrible mindset to be in. This leads to un-fun games and you and your friends getting mad at each other, so just make your decisions based on the game and try not to take things personally.

#### Don't be afraid to kill people if it advances you

It's a fun game, and people don't like killing their friends, but sometimes you have to eliminate someone because if you don't, they will eliminate you. Knowing when and when not to kill a player also takes some careful thought and experience. Also remember, it's the last player alive that wins. Killing someone early doesn't get you bonus points, but it can help you win the game later.

#### Politics

Negotiate with people. For example:

- "I'll let this spell resolve, if you don't attack me for 3 turns."
- "We need to team up to defeat Suzy, so let's not attack each other for a while."
- "Can you make me discard a card? I have something with Madness that I want to cast. I'll help you out by gaining you some life."

Don't make promises you aren't going to keep. Seriously. It's extremely rude to promise someone something in the game and not follow through with it. If you do that in a game with me, I'm likely to never play with you again. Likewise, don't argue semantic points or lawyer people into things. Nobody likes the guy who says "no, I said I wouldn't _attack_ you with this creature. I never said I wouldn't _target you with it's ability_!" That's called being a cock.

#### No Whining

Don't be a sore loser or a sore winner. No matter what, say good game and remember that everyone is just there to have fun.

## Conclusion

I hope this guide was helpful. I hope you have a great time playing Commander and I wish you the best of luck!


[//]: # (card images)
[Ancient Grudge]: https://img.scryfall.com/cards/large/front/3/d/3d7313d3-e6fb-4e82-b558-5fcfd5b71177.jpg "Ancient Grudge is red, but its color identity is red and green"
[Dovescape]: https://img.scryfall.com/cards/large/front/b/6/b6e3d6e6-ac17-4d73-acac-089442de4af6.jpg "Dovescape is blue and white, and its color identity is blue and white"
[Blind Obedience]: https://img.scryfall.com/cards/large/front/7/7/77fccacf-a9b3-4290-9b83-24188e7c885b.jpg "Blind Obedience is white, and its color identity is white"
[Arcades Sabboth]: https://img.scryfall.com/cards/large/front/8/5/8520de8b-0d8d-465a-b112-342ecbbaffa6.jpg "The five Elder Dragons"
[Chromium]: https://img.scryfall.com/cards/large/front/1/5/15ec5a20-4e8f-40b2-9abf-c0bf1cf816c3.jpg "The five Elder Dragons"
[Nicol Bolas]: https://img.scryfall.com/cards/large/front/e/6/e683de3c-55fc-4b4c-a7ca-f0c7e67a9b0f.jpg "The five Elder Dragons"
[Vaevictis Asmadi]: https://img.scryfall.com/cards/large/front/d/f/df01b548-9738-4c84-beb6-9a375f41d496.jpg "The five Elder Dragons"
[Palladia-Mors]: https://img.scryfall.com/cards/large/front/e/d/ede0ce7a-0799-40b9-b725-665dc9c1cede.jpg "The five Elder Dragons"
[Ancestral Recall Beta]: https://img.scryfall.com/cards/large/front/4/6/46b0a5c2-ac85-448e-9e87-12fc74fd4147.jpg "Old wording of Ancestral Recall"
[Ancestral Recall]: https://img.scryfall.com/cards/large/front/9/6/961d3fd1-0ddc-47bf-8b7b-201b812da0f5.jpg "New wording of Ancestral Recall"
[Glasses of Urza Beta]: https://img.scryfall.com/cards/large/front/e/b/eb6953fd-ee48-49dc-9c9c-bfb9a9dc06d0.jpg "Old printing of Glasses of Urza"
[Glasses of Urza]: https://img.scryfall.com/cards/large/front/4/b/4bd9f45f-30b3-4bff-9fd3-9a71137ac741.jpg "New printing of Glasses of Urza"
[Command Tower]: https://img.scryfall.com/cards/large/front/6/d/6d28946e-a478-4e0b-b39b-ec0236ddc9a5.jpg "Command Tower"
[Gemstone Mine]: https://img.scryfall.com/cards/large/front/2/6/26794aa3-7532-4611-a591-51a51e5f9189.jpg "Gemstone Mine"
[Cascading Cataracts]: https://img.scryfall.com/cards/large/front/7/7/778739db-4431-4e58-91de-d2619aeef3ce.jpg "Cascading Cataracts"
[Painted Bluffs]: https://img.scryfall.com/cards/large/front/8/b/8b373131-2a1d-4710-8a11-c1b366a174d4.jpg "Painted Bluffs"
[Barktooth Warbeard]: https://img.scryfall.com/cards/large/front/b/f/bffbda3c-61c0-421d-a724-6bb9a7005c0f.jpg "Barktooth Warbeard"
[Gabriel Angelfire]: https://img.scryfall.com/cards/large/front/2/e/2e349074-1402-44cf-be19-33a661cff3b6.jpg "Gabriel Angelfire"
[Gallowbraid]: https://img.scryfall.com/cards/large/front/8/d/8df86192-6374-42ac-94bc-95e2e8284bd6.jpg "Gallowbraid"
[Sir Shandlar of Eberyn]: https://img.scryfall.com/cards/large/front/2/a/2a92c419-8f1e-4604-824d-28b086b54216.jpg "Sir Shandlar of Eberyn"
[Uril, the Miststalker]: https://img.scryfall.com/cards/large/front/1/1/11e22185-47d0-465b-8181-afe194af5cac.jpg "Uril, the Miststalker"
[Sliver Legion]: https://img.scryfall.com/cards/large/front/8/b/8bd37a04-87b1-42ad-b3e2-f17cd8998f9d.jpg "Sliver Legion"
[Sram, Senior Edificer]: https://img.scryfall.com/cards/large/front/1/b/1b323e2c-59dd-4d70-9a48-b10f807bb818.jpg "Sram, Senior Edificer"
[Island]: https://img.scryfall.com/cards/large/front/6/9/695f7519-b011-4a86-9226-80c2d9747a42.jpg "Island"
[Elvish Spirit Guide]: https://img.scryfall.com/cards/large/front/8/d/8d77623b-c0a2-41a1-ae88-9015814ebab5.jpg "Elvish Spirit Guide"
[Flash]: https://img.scryfall.com/cards/large/front/d/3/d31459c2-9656-4e9a-bb72-71a910e8570b.jpg "Flash"
[Protean Hulk]: https://img.scryfall.com/cards/large/front/d/a/dac2252b-2eb4-458d-b838-860ce741a82d.jpg "Protean Hulk"
[Carrion Feeder]: https://img.scryfall.com/cards/large/front/d/3/d3e33835-a293-4a1f-85d5-8ac22360ef35.jpg "Carrion Feeder"
[Karmic Guide]: https://img.scryfall.com/cards/large/front/b/0/b0768971-88ed-4166-aede-209654878e53.jpg "Karmic Guide"
[Academy Rector]: https://img.scryfall.com/cards/large/front/4/3/4367bc78-0912-4abd-8edd-bc792558d01a.jpg "Academy Rector"
[Grand Abolisher]: https://img.scryfall.com/cards/large/front/b/4/b4c4f694-618a-43ed-8781-2a51a234ba8e.jpg "Grand Abolisher"
[Animate Dead]: https://img.scryfall.com/cards/large/front/7/b/7b83536a-efa4-41f3-9424-75b0efc0aea5.jpg "Animate Dead"
[Sylvan Safekeeper]: https://img.scryfall.com/cards/large/front/6/0/60d695b3-b02b-42c6-bf1b-9d97a8d82eae.jpg "Sylvan Safekeeper"
[Mikaeus, the Unhallowed]: https://img.scryfall.com/cards/large/front/8/8/8879190f-d8ff-47ce-a5d8-6a481a67236a.jpg "Mikaeus, the Unhallowed"
[Walking Ballista]: https://img.scryfall.com/cards/large/front/3/2/329a8738-3e17-403a-857a-0ba529ce8cd1.jpg "Walking Ballista"
[Warp World]: https://img.scryfall.com/cards/large/front/a/a/aa6e1fb5-a06b-4e10-8cc7-785e0f0b298e.jpg "Warp World"
[Scrambleverse]: https://img.scryfall.com/cards/large/front/2/b/2b61fa9d-3f69-4632-be0e-09924ca88501.jpg "Scrambleverse"
[Dimensional Breach]: https://img.scryfall.com/cards/large/front/f/1/f18f2832-07c5-47be-8966-b250fb997f78.jpg "Dimensional Breach"
[Cataclysm]: https://img.scryfall.com/cards/large/front/7/1/713160be-bcfd-4ef5-9457-c02b926ba06e.jpg "Cataclysm"
[Crypt Ghast]: https://img.scryfall.com/cards/large/front/6/2/623c9804-42c4-4b69-bc39-f70d96929d07.jpg "Crypt Ghast"
[Zendikar Resurgent]: https://img.scryfall.com/cards/large/front/3/3/33f64032-1e87-4d22-a211-c37e11ffa247.jpg "Zendikar Resurgent"
[Caged Sun]: https://img.scryfall.com/cards/large/front/d/f/dfe6f9ec-3b7f-4c11-acd1-440e14217e5d.jpg "Caged Sun"
[Extraplanar Lens]: https://img.scryfall.com/cards/large/front/6/2/622a6523-3b12-4657-a656-00a57a3ae59c.jpg "Extraplanar Lens"
[Commander's Sphere]: https://img.scryfall.com/cards/large/front/8/b/8b991b05-60e4-49a6-9024-3465082d4932.jpg "Commander's Sphere"
[Chromatic Lantern]: https://img.scryfall.com/cards/large/front/e/a/ea123356-3055-4e42-b816-ac3c4e9087d1.jpg "Chromatic Lantern"
[Coalition Relic]: https://img.scryfall.com/cards/large/front/7/3/73f27b75-d400-46fd-acec-6b55a1e801ee.jpg "Coalition Relic"
[Rampant Growth]: https://img.scryfall.com/cards/large/front/a/9/a9dd8043-4099-42bb-9d54-4efc8b38fe18.jpg "Rampant Growth"
[Cultivate]: https://img.scryfall.com/cards/large/front/8/3/83d1a3a2-4f2d-4f5f-9270-7c771d2c91b1.jpg "Cultivate"
[Kodama's Reach]: https://img.scryfall.com/cards/large/front/1/0/102d20e6-5179-44b7-9abd-f1defc15ca6a.jpg "Kodama's Reach"
[Explosive Vegetation]: https://img.scryfall.com/cards/large/front/6/d/6dc4351a-8cc9-4043-80b9-23794f576cbc.jpg "Explosive Vegetation"
[Thran Dynamo]: https://img.scryfall.com/cards/large/front/5/0/508a8735-642c-4f22-bbd9-4a189d93e7b7.jpg "Thran Dynamo"
[Charcoal Diamond]: https://img.scryfall.com/cards/large/front/e/a/ea9f9b9a-f5dc-47d5-8d01-baf79842ea65.jpg "Charcoal Diamond"
[Sky Diamond]: https://img.scryfall.com/cards/large/front/6/1/61d27478-5a03-47a8-a185-8a0c9b4e0474.jpg "Sky Diamond"
[Simic Signet]: https://img.scryfall.com/cards/large/front/1/2/12013400-21db-4a3b-9e4e-edbea7c8021f.jpg "Simic Signet"
[Azorius Signet]: https://img.scryfall.com/cards/large/front/2/0/20daf226-12c3-460c-b66a-e447346076d2.jpg "Azorius Signet"
[Mind Stone]: https://img.scryfall.com/cards/large/front/4/2/42bd038d-1005-4095-9310-108caa56465f.jpg "Mind Stone"
[Hedron Archive]: https://img.scryfall.com/cards/large/front/6/4/64bff432-b85c-4764-82a7-6ae93c8bed45.jpg "Hedron Archive"
[Dreamstone Hedron]: https://img.scryfall.com/cards/large/front/d/f/df32fd76-5f14-4000-beb1-4933d0675fbc.jpg "Dreamstone Hedron"
[Sol Ring]: https://img.scryfall.com/cards/large/front/8/3/83a0f2eb-2f6d-4aaa-b7a9-ea06d5de7eca.jpg "Sol Ring"
[Path to Exile]: https://img.scryfall.com/cards/large/front/3/0/30b68ec2-bdb8-46ab-a741-36259926fd6f.jpg "Path to Exile"
[Swords to Plowshares]: https://img.scryfall.com/cards/large/front/6/f/6ff9af62-1895-465a-b1f3-61f0d8318958.jpg "Swords to Plowshares"
[Rapid Hybridization]: https://img.scryfall.com/cards/large/front/9/1/917df0f5-af77-4e8a-af81-2f78a432b520.jpg "Rapid Hybridization"
[Pongify]: https://img.scryfall.com/cards/large/front/7/2/726b3de5-f2c1-4a92-9039-f61ae9575839.jpg "Pongify"
[Oblivion Ring]: https://img.scryfall.com/cards/large/front/4/2/42641602-ca1a-41b5-a333-71a58dde4474.jpg "Oblivion Ring"
[Banishing Light]: https://img.scryfall.com/cards/large/front/e/4/e45da7c2-d869-4b51-956c-287d0b0d2df4.jpg "Banishing Light"
[Vindicate]: https://img.scryfall.com/cards/large/front/1/6/1658f12b-8ac5-4d29-86d5-f20c4d5f7e48.jpg "Vindicate"
[Anguished Unmaking]: https://img.scryfall.com/cards/large/front/9/0/90ced4fa-6509-4f7a-9da7-efc70de6f90c.jpg "Anguished Unmaking"
[Violent Ultimatum]: https://img.scryfall.com/cards/large/front/7/e/7e6ac9ce-e163-426f-8fbd-5ee1ec177dc1.jpg "Violent Ultimatum"
[Decimate]: https://img.scryfall.com/cards/large/front/6/5/6551db26-83e8-4256-822b-122c35ee6097.jpg "Decimate"
[Crush Contraband]: https://img.scryfall.com/cards/large/front/1/3/13e162b3-2e5a-4235-a2a7-1c8e3e9f2c19.jpg "Crush Contraband"
[Casualties of War]: https://img.scryfall.com/cards/large/front/0/8/08fc5e50-c6f7-41ec-815a-5667eefded78.jpg "Casualties of War"
[Skullclamp]: https://img.scryfall.com/cards/large/front/a/b/ab56119b-1e13-44d4-b73b-991488c039f1.jpg "Skullclamp"
[Greed]: https://img.scryfall.com/cards/large/front/c/3/c39d94fb-a092-4307-b99b-73fb97998cc2.jpg "Greed"
[Wheel of Fortune]: https://img.scryfall.com/cards/large/front/4/a/4a7a420a-d924-422a-afd9-81a821ace048.jpg "Wheel of Fortune"
[Opportunity]: https://img.scryfall.com/cards/large/front/c/f/cf01d4d9-c9e9-4826-a155-4527f9be758e.jpg "Opportunity"
[Citadel Siege]: https://img.scryfall.com/cards/large/front/8/7/871fcb2a-136c-4efe-b5cd-bec102b02e4b.jpg "Citadel Siege"
[Monastary Siege]: https://img.scryfall.com/cards/large/front/3/2/32d2a1ad-210c-444d-9cb7-b78b493db7ea.jpg "Monastary Siege"
[Palace Siege]: https://img.scryfall.com/cards/large/front/d/a/da855bb6-adc2-484c-a084-83aff2b267f1.jpg "Palace Siege"
[Outpost Siege]: https://img.scryfall.com/cards/large/front/b/9/b909b8bc-667b-4784-979f-093029b5a156.jpg "Outpost Siege"
[Frontier Siege]: https://img.scryfall.com/cards/large/front/5/e/5e7ee5ff-eabc-4947-b5fe-2647c7e2eb82.jpg "Frontier Siege"
[Lifecrafter's Bestiary]: https://img.scryfall.com/cards/large/front/7/4/7439a855-4041-4d14-8edf-6741a734e55d.jpg "Lifecrafter's Bestiary"
[Deathreap Ritual]: https://img.scryfall.com/cards/large/front/8/c/8cad9fa8-833c-4d30-8928-2a6c6284cd0b.jpg "Deathreap Ritual"
[Soul Warden]: https://img.scryfall.com/cards/large/front/d/9/d96266b3-a7cb-40ce-a328-ac13719fe5f0.jpg "Soul Warden"
[Sensei's Divining Top]: https://img.scryfall.com/cards/large/front/4/a/4a08ca06-58db-4ce6-b490-be4bea8956a1.jpg "Sensei's Divining Top"
[Wrath of God]: https://img.scryfall.com/cards/large/front/2/d/2d9b12cc-f616-4b52-91eb-a430e70f9251.jpg "Wrath of God"
[Damnation]: https://img.scryfall.com/cards/large/front/7/9/795fdd00-5833-4732-bc73-0ebcd84aa330.jpg "Damnation"
[Blasphemous Act]: https://img.scryfall.com/cards/large/front/a/0/a09bb94a-1e47-43e7-a7e8-627c10cf8c1f.jpg "Blasphemous Act"
[Evacuation]: https://img.scryfall.com/cards/large/front/b/b/bbf5e27b-b1ab-470c-8204-146032e26b5b.jpg "Evacuation"
[Austere Command]: https://img.scryfall.com/cards/large/front/b/e/bef16a71-5ed2-4f30-a844-c02a0754f679.jpg "Austere Command"
[Merciless Eviction]: https://img.scryfall.com/cards/large/front/a/3/a3b9f5dd-3f2b-4071-a22b-0d4fa39fb64b.jpg "Merciless Eviction"
[Back to Nature]: https://img.scryfall.com/cards/large/front/b/4/b49270b2-ba15-4268-adb3-16d09c09adee.jpg "Back to Nature"
[Shatterstorm]: https://img.scryfall.com/cards/large/front/f/7/f7a1aa93-26d1-40b0-82d8-414f56a36337.jpg "Shatterstorm"
[Counterspell]: https://img.scryfall.com/cards/large/front/0/b/0bd56820-a903-4118-bbef-3e091789482f.jpg "Counterspell"
[Summary Dismissal]: https://img.scryfall.com/cards/large/front/0/b/0b75794d-3334-4b4d-9446-0a251dd3bd15.jpg "Summary Dismissal"
[Cryptic Command]: https://img.scryfall.com/cards/large/front/3/0/30f6fca9-003b-4f6b-9d6e-1e88adda4155.jpg "Cryptic Command"
[Draining Whelk]: https://img.scryfall.com/cards/large/front/c/5/c559d326-b97b-43d9-b7c9-c09e1a0e9db6.jpg "Draining Whelk"
[Talrand, Sky Summoner]: https://img.scryfall.com/cards/large/front/8/3/83c74e76-c6ce-4107-8816-0be8c20d7617.jpg "Talrand, Sky Summoner"
[Animar, Soul of Elements]: https://img.scryfall.com/cards/large/front/4/6/46407f28-39f6-43ca-b7aa-da5120215c49.jpg "Animar, Soul of Elements"
[Rakdos, the Showstopper]: https://img.scryfall.com/cards/large/front/4/e/4e3c30c7-c52e-41a0-b7c2-21d39c05160b.jpg "Rakdos, the Showstopper"
[Mana Tithe]: https://img.scryfall.com/cards/large/front/7/d/7d48d622-f397-4f31-b1a5-0c23f60aa71c.jpg "Mana Tithe"
[Stifle]: https://img.scryfall.com/cards/large/front/2/d/2d7643c0-b2db-478f-944e-b27b77bad3eb.jpg "Stifle"
[Ricochet Trap]: https://img.scryfall.com/cards/large/front/5/d/5d782375-9192-4ed0-bd79-f3404e5a1b01.jpg "Ricochet Trap"

[//]: # (website links)
[Gatherer]: https://gatherer.wizards.com/Pages/Advanced.aspx "Gatherer"
[MTGGoldfish]: https://www.mtggoldfish.com/ "MTGGoldfish"
[EDHREC]: https://edhrec.com/ "EDHREC"
[Deckstats]: https://deckstats.net/ "Deckstats"
[TCGPlayer]: https://www.tcgplayer.com "TCGPlayer"
[Scryfall]: https://scryfall.com "Scryfall"
[Inked]: https://www.inkedgaming.com/products/custom-playmat "Inked custom playmats"
[Store Locator]: https://locator.wizards.com/event-reservations-web/?searchType=magic-events&query=Los%20Angeles,%20CA,%20USA&distance=25&page=1&sort=date&sortDirection=asc "WOTC Store Locator"

[//]: # (examples)
[Liliana Gatherer]: https://gatherer.wizards.com/Pages/Card/Details.aspx?multiverseid=398441 "Liliana, Heretical Healer Gatherer page"
[non-blue-counters]: https://gatherer.wizards.com/Pages/Search/Default.aspx?output=spoiler&method=visual&action=advanced&text=+%5b%22counter+target%22%5d+%5bspell%5d&color=+!%5bU%5d "non-blue counterspells"
[non-blue-counters-search]: /images/non-blue-counters-search.png "Search terms for non-blue counterspells"
[non-blue-counters-terms]: /images/non-blue-counters-terms.png "Search terms for non-blue counterspells"
[green white lands]: https://gatherer.wizards.com/Pages/Search/Default.aspx?output=spoiler&method=visual&action=advanced&text=+%5b%7bG%7d%5d+%5b%7bW%7d%5d+!%5b%7bB%7d%5d+!%5b%7bR%7d%5d+!%5b%7bU%7d%5d&type=+%5bland%5d "Search for green and white lands"
[the banlist]: https://magic.wizards.com/en/game-info/gameplay/rules-and-formats/banned-restricted#commander "Commander banlist"
[The Professor]: https://www.youtube.com/channel/UC7-hR5EfgpM6oHfiGDkxfMA "Tolarian Community College"

[//]: # (screenshots)
[green white lands search]: /images/green-white-lands-search.png "Search terms for green and white lands"
[green white lands terms]: /images/green-white-lands-terms.png "Search terms for green and white lands"
[green white lands exclude]: /images/green-white-lands-exclude.png "Search terms for green and white lands"
[My Decks]: /images/my-decks.png "Access the Deck Manager"
[Deck Manager]: /images/deck-manager.png "The Deck Manager page"
[Deck Editor]: /images/deck-editor.png "The Deck Editor page"
[Suggestion]: /images/suggestion.png "Choose a suggestion"
[Add Card]: /images/add-card.png "Add it to the list"
[Update Preview]: /images/update-preview.png "Update the deck preview"
[Deckstats Home]: /images/deckstats-home.png "Deckstats Home"
[MTGGoldfish Download]: /images/decklist-download.png "MTGGoldfish Download"
[Direct Entry]: /images/direct-entry.png "Upload your decklist"
[EDHREC Search]: /images/edhrec-search.png "EDHREC Search"
[Paste or Upload to Deckstats]: /images/paste-upload-to-deckstats.png "Paste or Upload to Deckstats"
[New Subsection]: /images/new-subsection.png "Create a new subsection"
[Scryfall Search]: /images/scryfall-search.png "Scryfall search results"
[Scryfall Single]: /images/scryfall-single.png "Scryfall single card page"
[Scryfall All]: /images/scryfall-all.png "All the printings of Sun Titan"
[MTGGoldfish Printings]: /images/mtggoldfish-printings.png "MTGGoldfish Printings"
[MTGGoldfish List]: /images/mtggoldfish-list.png "MTGGoldfish List"
[Mass Entry Link]: /images/mass-entry-link.png "Mass Entry"
