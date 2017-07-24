//
//  Utils.swift
//  BlackJackDemo
//
//  Created by Tomer Buzaglo on 24/07/2017.
//  Copyright © 2017 iTomerBu. All rights reserved.
//

import UIKit

//put all the global functions here:

//random numbers:
func rand(max:Int)->Int{
    let r:UInt32 = arc4random_uniform(UInt32(max))
    return Int(r)
}

//random numbers:
func rand(from:Int, to:Int)->Int{
    let range = to - from
    let r = rand(max: range)
    return from + r
}
//random numbers:
func rand(range:CountableClosedRange<Int>)->Int{
    let to = range.upperBound
    let from = range.lowerBound
    return rand(from: from, to: to)
}


