//
//  Deck.swift
//  BlackJackDemo
//
//  Created by Tomer Buzaglo on 24/07/2017.
//  Copyright © 2017 iTomerBu. All rights reserved.
//

import UIKit

struct Deck : CustomStringConvertible{
    //properties:
    var cards:[BlackJackCard] = []
    var description: String{
        return "\(cards)"
    }
    
    //init -> initialize your properties here...
    init() {
        for suit in 0...3{
            for rank in 2...14{
                let card = BlackJackCard(rank: rank, suit: suit)
                cards.append(card)
            }
        }
        shuffle()
    }
    
    /*
     mutating func addCard(){
     cards.append(BlackJackCard(rank: .Ace, suit: .Clubs))
     }
     */
    //actions:
    //deal, shuffle
    
    mutating func shuffle(){
        //1) for loop i..<cards.count
        for i in 0..<cards.count{
            let r = rand(max: cards.count)
            //1.2)  swap(i , rand)
            if i != r{
               swap(&cards[i], &cards[r])
            }
        }
    }
}

