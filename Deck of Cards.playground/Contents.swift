enum Rank: CaseIterable {
    case ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
}

enum Suit: CaseIterable {
    case clubs, diamonds, hearts, spades
}

struct Card {
    let rank: Rank
    let suit: Suit
}

struct Deck {
    var cards = [Card]()
    
    init() {
        for rank in Rank.allCases {
            for suit in Suit.allCases {
                cards.append(Card(rank: rank, suit: suit))
            }
        }
    }
}
