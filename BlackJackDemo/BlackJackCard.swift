//
//  BlackJackCard.swift
//  BlackJackDemo
//
//  Created by Tomer Buzaglo on 24/07/2017.
//  Copyright © 2017 iTomerBu. All rights reserved.
//

import UIKit

struct BlackJackCard : CustomStringConvertible{
    var rank:Rank
    var suit:Suit
    
    //customStringConvertible -> Ace Of ♣️
    var description: String{
        return "\(rank) of \(suit)"
    }
    
    //computed property:
    var value:Int{
        return rank.value
    }
    
    //init
    init(rank:Rank, suit:Suit) {
        self.rank = rank
        self.suit = suit
    }
    //init with raw values
    init(rank:Int, suit:Int) {
        self.rank = Rank(rawValue: rank)!
        self.suit = Suit(rawValue: suit)!
    }
}
