//
//  MemoryGame.swift
//  demo
//
//  Created by user on 2020/7/8.
//  Copyright © 2020 aug. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(isFaceUp: true, isMatched: false, content: content, id: pairIndex*2))
            cards.append(Card(isFaceUp: true, isMatched: false, content: content, id: pairIndex*2 + 1))
        }
    }
    
    struct Card: Identifiable{
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
        var id: Int
    }
}
