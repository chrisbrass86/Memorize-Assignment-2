//
//  Theme.swift
//  Memorize
//
//  Created by Christoph Braß on 03.01.24.
//

import Foundation

struct Theme {
        let name: String
        let emojis: [String]
        let numberOfPairs: Int
        let color: String
}

let themes = [
            Theme(name: "Halloween", emojis: ["👻", "🎃","🕷️", "😈","💀","🕸️","🧙🏻","🙀","👹","😱","☠️","🍭"], numberOfPairs: 12, color: "orange"),
            Theme(name: "Vehicles", emojis: ["🚗","🚕","🚙","🚌","✈️","🚜","🚒","🚑","🚁","🛻"], numberOfPairs: 10, color: "red"),
            Theme(name: "Fruits", emojis: ["🍏","🍎","🍐","🍊","🍋","🍌","🍉","🍇","🍓","🫐","🍈","🍒","🍑","🥭"], numberOfPairs: 8, color: "green"),
            Theme(name: "Ocean", emojis: ["🐙","🦑","🪼","🦐","🦞","🦀","🐡","🐠","🐟","🐬","🐳","🐋","🦈","🦭"], numberOfPairs: 11, color: "blue"),
            Theme(name: "Emojis", emojis: ["😀","😂","😘","😎","🧐","🤓","🥳","🥸","🥵","🥶","💩","🤯"], numberOfPairs: 9, color: "yellow"),
            Theme(name: "Food", emojis: ["🍕", "🍔", "🍟", "🌭", "🍿", "🍩", "🍦", "🍭", "🍫", "🍪", "🍗", "🍖", "🥓", "🥩", "🍤", "🍣", "🍱", "🍛", "🍜", "🍝", "🥪", "🥙", "🥗", "🥘", "🍲", "🍛", "🍚", "🍘", "🍙", "🥠", "🥟", "🥡", "🍢", "🍡", "🍧", "🍨", "🎂", "🍰", "🧁", "🥧", "🍮", "🍭", "🍬", "🍩", "🍪", "🍯"], numberOfPairs: 14, color: "brown")
]
    
