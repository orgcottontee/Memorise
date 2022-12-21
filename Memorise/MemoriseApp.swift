//
//  MemoriseApp.swift
//  Memorise
//
//  Created by adobada on 12/15/22.
//

import SwiftUI

@main
struct MemoriseApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(game: game)
        }
    }
}
