//
//  Suit.swift
//  BlackJackDemo
//
//  Created by Tomer Buzaglo on 24/07/2017.
//  Copyright © 2017 iTomerBu. All rights reserved.
//

import UIKit


enum Suit: Int, CustomStringConvertible {
    case Hearts = 0, Spades
    case Diamonds, Clubs
    
    var description: String{
        switch self {
        case .Clubs:
            return "♣️"
        case .Diamonds:
            return "♦️"
        case .Spades:
            return "♠️"
        case .Hearts:
            return "♥️"
        }
    }
}
