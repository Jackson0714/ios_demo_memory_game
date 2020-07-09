//
//  EmojiMemoryGame.swift
//  demo
//
//  Created by user on 2020/7/8.
//  Copyright © 2020 aug. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["⚽️","🏀","🎾","🏓"]
        
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) {pairIndex in
            return emojis[pairIndex]
        }
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
