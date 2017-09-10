import ceylon.test {
    assertEquals,
    parameters,
    test
}

import war20170908 {
    Deck,
    beatsHouseDecks
}

{[Deck, Boolean]*} beatsHouseDecksTestParameters = {
    [[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], false],
    [[14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2], false],
    [[2, 3, 4, 5, 6, 7, 13, 14, 8, 9, 10, 11, 12], true],
    [[2, 3, 4, 5, 6, 7, 14, 13, 8, 9, 10, 11, 12], true]
};

test
parameters (`value beatsHouseDecksTestParameters`)
shared void beatsHouseDecksTest(Deck deck, Boolean expected) {
    assertEquals(beatsHouseDecks(deck), expected);
}
