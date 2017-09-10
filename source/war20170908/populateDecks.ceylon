restricted (`module war20170908tests`)
shared Integer populationSize = 100;

restricted (`module war20170908tests`)
shared Population populateDecks(Population seed)
        => seed.append(
            deckStream()
                .filter(beatsHouseDecks)
                .take(populationSize - seed.size)
                .sequence());
