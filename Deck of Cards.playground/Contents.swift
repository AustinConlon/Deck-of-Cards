struct Card {
    enum Rank: Int, CaseIterable {
        case two = 2, three, four, five, six, seven, eight, nine, ten
        case ace, jack, queen, king
    }

    enum Suit: Character, CaseIterable {
        case clubs = "♣️", diamonds = "♦️", hearts = "♥️", spades = "♠️"
    }
    
    let rank: Rank
    let suit: Suit
}

struct Deck {
    var cards = [Card]()
    
    init() {
        for rank in Card.Rank.allCases {
            for suit in Card.Suit.allCases {
                cards.append(Card(rank: rank, suit: suit))
            }
        }
    }
}
