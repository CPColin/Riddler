import ceylon.test {
    assertEquals,
    parameters,
    test
}

import war20170908 {
    Deck,
    battle
}

Deck battleTestDeck1 = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];

Deck battleTestDeck2 = [14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2];

{[Deck, Deck, Boolean, Integer]*} battleTestParameters = {
    [battleTestDeck1, battleTestDeck1, false, 0],
    [battleTestDeck1, battleTestDeck1, true, -13],
    [battleTestDeck1, battleTestDeck2, false, 0],
    [battleTestDeck1, battleTestDeck2, true, -1]
};

test
parameters (`value battleTestParameters`)
shared void battleTest(Deck attacker, Deck defender, Boolean defenderWinsTies, Integer expected) {
    assertEquals(battle(attacker, defender, defenderWinsTies), expected);
}
