//
//  ViewController.swift
//  BlackJackDemo
//
//  Created by Tomer Buzaglo on 24/07/2017.
//  Copyright © 2017 iTomerBu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //findViewById... meh
    @IBOutlet weak var midLabel: UILabel!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBAction func dealCard(_ sender: UIButton) {
        let card = getCard()
        midLabel.text = "\(card.suit)"
        topLabel.text = "\(card.rank)"
        bottomLabel.text = "\(card.suit)"
        //midLabel.text = card.suit.description
    }
    
    func getCard() -> BlackJackCard{
        let rank:Int = rand(from: 2, to: 15)//2...14
        let suit:Int = rand(max: 4) // 0...3
        let card = BlackJackCard(rank: rank, suit: suit)
        print(card)
        
        
        return card
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(Deck())
    }
}

