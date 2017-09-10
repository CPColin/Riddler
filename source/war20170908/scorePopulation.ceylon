restricted (`module war20170908tests`)
shared ScoredPopulation scorePopulation(Population population)
        => [
            for (attacker in population) [
                    attacker,
                    sum { 0, *{
                            for (defender in population)
                                battle(attacker, defender, false)
                        } }
                ]
        ];
