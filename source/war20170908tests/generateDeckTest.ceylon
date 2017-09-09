import ceylon.test {
    assertEquals,
    tag,
    test
}

import war20170908 {
    generateDeck
}

tag("random")
test
shared void generateDeckTest() {
    value deck = generateDeck().sort(increasing);
    
    assertEquals(deck, [ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 ]);
}