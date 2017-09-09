"## From <https://fivethirtyeight.com/features/riddler-nation-goes-to-war/>:
 
 You and a random opponent are playing a simplified game of War. Both you and your opponent have 13
 cards in your deck: 2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king and ace. You can arrange these
 cards in any order you want. You’ll play a one-round game, where you go through all 13 of your
 cards just once. Both you and your opponent draw a single card off the top of your deck and compare
 them. If your card outranks your opponent’s, you get a point. (No points are awarded for ties.)
 After all 13 cards have been shown, the player with the most points wins.
 
 I’ll match you up against every player who submits, and the player who wins the most games overall
 will be this week’s Express winner.
 
 However, to enter into this tournament, you must first beat me, the house. I have a deck that is in
 this order: 2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K, A. I, being the house and all, get an additional
 advantage in that I also win ties. Plus I can choose to play my decks forward or backward — the
 order above or A, K, Q, J, 10, 9, 8, 7, 6, 5, 4, 3, 2. Your deck must be able to beat both of my
 decks to enter the tournament.
 
 ## TODO:
 
 * Convert card value to string
 * Convert deck to string
 * Generate random deck
 * Compare two decks, with tie-break strategy
 * Validate deck against house deck
 * Generate population of N valid decks
 * Score each deck in population against rest of population O(n²)
 * Generate new population by keeping X best decks and filling in with new, random decks
 
 ## Bonus, if progress stagnates:
 
 * Tweak deck by swapping some of its elements
 * Generate new population by keeping X best decks, Y tweaked decks, and filling in rest
 "
module war20170908 "1.0.0" {}
