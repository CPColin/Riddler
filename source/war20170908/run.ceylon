shared void run() {
    value winnerCount = 98;
    function winners(ScoredPopulation population) => [
        for (entry in population.take(winnerCount))
            entry.key
    ];
    
    variable value generation = 0;
    variable value population = populateDecks(empty);
    
    while (generation < 1000) {
        value scoredPopulation = scorePopulation(population).sort(decreasingItem);
        
        print("Generation ``generation + 1``");
        
        for (deck -> score in scoredPopulation) {
            print("``deckString(deck)`` ``score``");
        }
        
        generation++;
        
        population = populateDecks(winners(scoredPopulation));
    }
}
