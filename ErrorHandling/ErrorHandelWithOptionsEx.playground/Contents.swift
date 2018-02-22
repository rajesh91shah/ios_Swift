//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func someThrowsOptional(num: Int) throws -> Int {
    let num2:Int = 9
    let ans: Int = num2 / num
    return ans
}

let x = try? someThrowsOptional(num: 0)
print(x)
