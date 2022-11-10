//
//  RollTheDice.swift
//  RollTheDice
//
//  Created by Raul Ribeiro on 10/11/22.
//

import Foundation

fileprivate class Dice {
    static func roll() -> Int {
        return Int.random(in: 1...6)
    }
}
struct RollTheDice {
    var oldNumberValue: Int = 0
    var lastNumberValue: Int = 0
    
    mutating func execute() {
        oldNumberValue = lastNumberValue
        lastNumberValue = Dice.roll()
    }
}
