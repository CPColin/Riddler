restricted(`module war20170908tests`)
shared String cardString(Integer card)
        => switch (card)
            case (10) "T"
            case (11) "J"
            case (12) "Q"
            case (13) "K"
            case (14) "A"
            else card.string;
