import ceylon.test {
    assertEquals,
    parameters,
    test
}

import war20170908 {
    Deck,
    Population,
    ScoredPopulation,
    scorePopulation
}

{[Population, ScoredPopulation]*} scorePopulationTestParameters = {
    [[], []],
    [[
            [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],
            [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 2, 3, 4]
        ], [
            [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14] -> -1,
            [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 2, 3, 4] -> 1
        ]]
};

test
parameters (`value scorePopulationTestParameters`)
shared void scorePopulationTest(Population population, ScoredPopulation expected) {
    assertEquals(scorePopulation(population), expected);
}
