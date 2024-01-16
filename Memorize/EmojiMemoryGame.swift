//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Christoph Braß on 02.12.23.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    private static func createMemoryGame(theme: Theme) -> MemoryGame<String> {
        return  MemoryGame( numberOfPairsOfCards: theme.numberOfPairs) { pairIndex in
            if theme.emojis.indices.contains(pairIndex) {
                return theme.emojis[pairIndex]
            } else {
                return "⁉️"
            }
        }
    }
        
    @Published private var model : MemoryGame<String>
    private(set) var theme: Theme
    
    init() {
        self.theme = themes.randomElement()!
        self.model = EmojiMemoryGame.createMemoryGame(theme: self.theme)
        model.shuffle()
    }
    
    var themeColor = [
                    "orange": Color.orange,
                    "red": Color.red,
                    "green": Color.green,
                    "blue": Color.blue,
                    "yellow": Color.yellow,
                    "pink": Color.pink,
                    "brown": Color.brown,
                    "cyan": Color.cyan,
                    "indigo": Color.indigo,
                    "mint": Color.mint,
                    "purple": Color.purple,
                    "gray": Color.gray
                ]
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    var score: Int {
        return model.score
    }
    
    // MARK: - Intents
    
    func choose(_ card: MemoryGame<String>.Card) 
    {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func newGame() {
        if let newTheme = themes.randomElement() {
            model = EmojiMemoryGame.createMemoryGame(theme: newTheme)
            self.theme = newTheme
            model.shuffle()
        }
    }
}
