restricted (`module war20170908tests`)
shared Integer populationSize = 100;

restricted (`module war20170908tests`)
shared Population populateDecks()
        => deckStream().filter(beatsHouseDecks).take(populationSize).sequence();
