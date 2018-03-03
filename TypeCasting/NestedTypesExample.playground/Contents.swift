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
        
        struct Values {
            let firstValue: Int, secndValue: Int?
        }
        
        var values: Values{
            switch self {
            case .ace:
                return Values(firstValue: 1, secndValue: 11)
            case .jack, .queen, .king, .ace:
                return Values(firstValue: 10, secndValue: nil)
            default:
                return Values(firstValue: self.rawValue, secndValue: nil)
            }
        }

    }
    
    let rank: Rank, suit: Suit
    var discription: String {
        var output = 
    }
    
//    print(Rank.jack)
}
