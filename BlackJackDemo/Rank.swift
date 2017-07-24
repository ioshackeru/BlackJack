//
//  Rank.swift
//  BlackJackDemo
//
//  Created by Tomer Buzaglo on 24/07/2017.
//  Copyright © 2017 iTomerBu. All rights reserved.
//

import UIKit

enum Rank:Int, CustomStringConvertible{
    case Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    case Ace
    //computed property -> This is a getter
    var value:Int{
        switch self {
        case .Ace:
            return 11
        case .Jack, .Queen, .King:
            return 10
        default:
            return rawValue
        }
    }
    //computed property -> we conform to CustomStringConvertible
    var description: String{
        switch self {
        case .Jack:
            return "Jack"
        case .Queen:
            return "Queen"
        case .King:
            return "King"
        case .Ace:
            return "Ace"
        default:
            return "\(rawValue)"
        }
    }
}

