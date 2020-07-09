//
//  EmojiMemory.swift
//  demo
//
//  Created by user on 2020/7/8.
//  Copyright © 2020 aug. All rights reserved.
//

import SwiftUI

let sportsEmojis: Array<String> = ["⚽️","🏀","🎾","🏓"]
func createCardContent(pairIndex: Int) -> String {
    return sportsEmojis[pairIndex]
}

class EmojiMemoryGame {
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 2, cardContentFactory: createCardContent)
    
    static func createMemoryGame() -> MemoryGame<String> {
        
        return MemoryGame<String>(numberOfPairsOfCards: 2, cardContentFactory: createCardContent)
    }
    // Access to the model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
