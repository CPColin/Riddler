restricted (`module war20170908tests`)
shared Integer battle(Deck attacker, Deck defender, Boolean defenderWinsTies) =>
    sum {
        for ([attackerCard, defenderCard] in zipPairs(attacker, defender))
            if (attackerCard > defenderCard) then 1
            else if (attackerCard < defenderCard) then -1
            else (defenderWinsTies then -1 else 0)
    };
