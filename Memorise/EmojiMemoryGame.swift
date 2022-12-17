//
//  EmojiMemoryGame.swift
//  Memorise
//
//  Created by adobada on 12/16/22.
//
// This is the ViewModel, and the job is to be the intermediary between the Model and the View
// As a result, the ViewModel is part of the UI, so we can import SwiftUI
// ViewModel's role as gatekeep to the Model - it's the ViewModel's job to protect the model against ill-behaving Views/anyone who has access to the ViewModel
// instance member means any function or variable that is defined in your emojiMemoryGame
// property refers to vars or lets inside a Struct or Class
// initilizer is when you assign a value to a property using an equal sign
// type function or type property is when you use static before a property or function. Using static makes the function or property global, but keeps them namespaced inside our class. Result is that the type function and property are attached to the type and created one(EmojiMemoryGame in this case, which is why it is called a type function or property) whereas a regular property or function is on every instance -

import SwiftUI

class EmojiMemoryGame {
    static let emojis = ["🚝", "🚖", "🚡", "🚔", "🚃", "🚈", "🚂", "🚆", "✈️", "⛵️", "🚀", "🛰️", "🛸", "🚁", "🛳️", "🛥️", "🛩️", "🚅", "🚍", "🛵", "🚑", "🚒", "🚜", "🏎️"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    private var model: MemoryGame<String> = createMemoryGame()
    // This is where we explicity delcare the type of the "don't care/generic" (<CardContent>)of MemoryGame
    // 'private' means that only the ViewModel's code itself can see Model. Doing so protects the model against any View reaching in and tyrihng to change things -> part of something called access control. Make it private unless we're SURE we want other Structs and Classes to access them.
    // 'private(set)' tells Swift that other Classes and Structs can look at the Model, but can't change it
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
