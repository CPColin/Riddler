import ceylon.test {
    assertEquals,
    assertTrue,
    test
}

import war20170908 {
    populateDecks,
    populationSize
}

test
shared void populateDecksTest() {
    // The parameters annotation got confused by all the tuples.
    value parameters = {
        [],
        [[2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]],
        [[2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2],
            [3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3]],
        [[2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2],
            [3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3],
            [4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4]]
    };
    
    for (seed in parameters) {
        value population = populateDecks(seed);
        
        assertEquals(population.size, populationSize);
        assertTrue(population.containsEvery(seed));
    }
}
