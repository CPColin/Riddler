restricted (`module war20170908tests`)
shared String deckString(Deck deck)
        => let (stringBuilder = StringBuilder())
            stringBuilder.appendAll(deck.map(cardString)).string;
