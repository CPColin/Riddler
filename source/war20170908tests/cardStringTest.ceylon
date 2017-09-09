import ceylon.test {
    assertEquals,
    parameters,
    test
}

import war20170908 {
    cardString
}

{[Integer, String]*} cardStringParameters = {
    [2, "2"],
    [3, "3"],
    [4, "4"],
    [5, "5"],
    [6, "6"],
    [7, "7"],
    [8, "8"],
    [9, "9"],
    [10, "T"],
    [11, "J"],
    [12, "Q"],
    [13, "K"],
    [14, "A"]
};

test
parameters(`value cardStringParameters`)
void cardStringTest(Integer card, String expected) {
    assertEquals(cardString(card), expected);
}
