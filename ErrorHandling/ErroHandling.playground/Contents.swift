//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/* to indicate that function method, or  initializer can throw an error, you write a __throws__ keyword
 * a function marked with trows is called throwing function
 */

/// example ---- func canThrowError() throws -> String {}
/// example ---- func cannotThrowError() -> String {}

enum VendingMachinError: Error {
    case invalidSelection
    case insufficientFund(coinsNeeded: Int)
    case outOfStock
}


struct Item {
    var price: Int
    var count: Int
}

class VendingMachin {
    var inventory = [  "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    
    var coinDeposited = 0
    
    func vend(itemNamed name: String) throws {
        
        guard let item = inventory[name] else {
            throw VendingMachinError.invalidSelection
        }
        
        guard item.count > 0 else {
            throw VendingMachinError.outOfStock
        }
        
        guard item.price <= coinDeposited else {
            throw VendingMachinError.insufficientFund(coinsNeeded: item.price - coinDeposited)
        }
        
        coinDeposited -= item.price
        
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Discription \(inventory[name])")
        
    }
}


let favouriteSnacks = [ "Alice": "Chips", 
                    "Bob": "Licorice",
                    "Eve": "Pretzels"
                ]

func buyFavouriteSnacks(person: String, vendingMachine: VendingMachin) throws {
    let snackNames = favouriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackNames)
}


var vendingMachine = VendingMachin()
vendingMachine.coinDeposited = 8
do {
    try buyFavouriteSnacks(person: "Alice", vendingMachine: vendingMachine)
    print("Success! Yum.")
} catch VendingMachinError.invalidSelection {
    print("Invalid Selection.")
} catch VendingMachinError.outOfStock {
    print("Out of Stock.")
} catch VendingMachinError.insufficientFund(let coinsNeeded) {
    print("Insufficient funds. Please insert an additional \(coinsNeeded) coins.")
} catch {
    print("Unexpected error: \(error).")
}

func nourish(with item: String) throws {
    do {
        try vendingMachine.vend(itemNamed: item)
    } catch is VendingMachinError {
        print("invalid selection, out of stock, or not enugh memeory")
    }
}

try nourish(with: "Pretzels")
do {
    try nourish(with: "Pretzels")
} catch  {
    print("unexpected non vegetaraina error : \(error)")
}

