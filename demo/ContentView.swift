//
//  ContentView.swift
//  demo
//
//  Created by user on 2020/7/7.
//  Copyright © 2020 aug. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //var viewModel: EmojiMemoryGame
    
    var body: some View {
        
        HStack{
            ForEach(0..<4) {
                index in CardView(isFaceUp: true)
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)  
        
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("😀")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
    
}



















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
