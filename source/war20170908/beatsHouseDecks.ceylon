restricted (`module war20170908tests`)
shared Boolean beatsHouseDecks(Deck deck)
        => battle(deck, [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], true) > 0
                || battle(deck, [14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2], true) > 0;
