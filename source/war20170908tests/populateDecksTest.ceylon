import ceylon.test {
    assertEquals,
    test
}

import war20170908 {
    populateDecks,
    populationSize
}

test
shared void populateDecksTest() {
    value population = populateDecks();
    
    assertEquals(population.size, populationSize);
}
