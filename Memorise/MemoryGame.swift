//
//  MemoryGame.swift
//  Memorise
//
//  Created by adobada on 12/16/22.
//
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    // By nesting this Struct, we make it clear that this is a Card that belongs to a MemoryGame
    
    //Using generics and functions as arguments
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // add numberOfPairsOfCards x 2 card to cards array
        // We lose the free init when we declare one here
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        // We made the content generic (don't care) beacuse we don't want to limit the content to only have String types (our app uses emojis). Since we're using a "don't care," we need to announce it to the world by including it within angle brackets in the main Struct because when someone uses the main Struct, they're gonna have to explicit tell us the type for the "don't care."
    }
}
