//: Playground - noun: a place where people can play

import UIKit

protocol SomeProtocol {
    var mustBeSettable: Int { get set}
    var doNotNeedToBeSettable: Int { get }
}

protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
}

protocol FullyName {
    var fullName: String { get }
    func address()
}


struct Person: FullyName {
    var fullName: String
    func address() {
        
    }
}

let jhon = Person(fullName: "Jhon Abhrahim")
jhon.fullName


