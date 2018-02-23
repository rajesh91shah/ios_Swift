//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct BlackJackCard {
    
    // nested suit enumration 
    
    enum Suit: Character {
        case spared = "♠", hart = "♡", dimond = "♢", clubs = "♣"
    }
    
    // nested rank enumration 
    enum Rank: Int {
        case two = 2, three, four, five, six, seven, eight, nine
        case jack, queen, king, ace
    }
    
    struct values {
        let firstValue: Int, secndValue: Int?
    }
    
//    print(Rank.jack)
}
