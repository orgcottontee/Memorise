//
//  ContentView.swift
//  Memorise
//
//  Created by adobada on 12/15/22.
//

import SwiftUI

struct ContentView: View {
    @State var emojis = ["🚝", "🚖", "🚡", "🚔", "🚃", "🚈", "🚂", "🚆", "✈️", "⛵️", "🚀", "🛰️", "🛸", "🚁", "🛳️", "🛥️", "🛩️", "🚅", "🚍", "🛵", "🚑", "🚒", "🚜", "🏎️"]
    @State var emojiCount = 20
    
    var body: some View {
        VStack {
            Text("Memorise")
                .font(.largeTitle)
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content:emoji)
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
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
