import ceylon.test {
    parameters,
    test,
    assertEquals
}

import war20170908 {
    Deck,
    deckString
}

{[Deck, String]*} deckStringTestParameters = {
    [ [ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "23456789TJQKA" ],
    [ [ 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2], "AKQJT98765432" ]
};

test
parameters(`value deckStringTestParameters`)
shared void deckStringTest(Deck deck, String expected) {
    assertEquals(deckString(deck), expected);
}
