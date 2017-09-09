import ceylon.random {
    randomize
}

restricted (`module war20170908tests`)
shared Deck generateDeck() {
    value deck = randomize(2..14)
        .sequence()
        .tuple();
    
    assert (is Deck deck);
    
    return deck;
}
