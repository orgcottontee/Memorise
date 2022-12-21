//
//  ContentView.swift
//  Memorise
//
//  Created by adobada on 12/15/22.
//

import SwiftUI

struct ContentView: View {
    let game: EmojiMemoryGame
    
    var body: some View {
        VStack {
            Text("Memorise")
                .font(.largeTitle)
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
                    ForEach(game.cards) { card in
                        CardView(card: card)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            HStack {
                Button {
                    
                } label: {
                    Text("Vehicles")
                }
                Button {
                    
                } label: {
                    Text("Animals")
                }
                Button {
                    <#code#>
                } label: {
                    Text("Flags")
                }
                
            }
        }
        .padding(.horizontal)
    }
}

struct CardView: View {
    let card: MemoryGame<String>.Card
    // When you build a view, pass in the minimum it needs to do what its job is. We're passing in ONE card here
    // These are read-only Structs, so "card" cannot change
    // Only time to use var is when you preceed with @State, but it's rare in a View, so don't expect a lot of vars in your View.
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(game: game)
            .preferredColorScheme(.dark)
        ContentView(game: game)
            .preferredColorScheme(.light)
    }
}
