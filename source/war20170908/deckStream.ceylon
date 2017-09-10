Iterable<Deck> deckStream() => object satisfies Iterable<Deck> {
    iterator() => object satisfies Iterator<Deck> {
        next() => generateDeck();
    };
};
