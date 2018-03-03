//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
In this kata, you must create a digital root function.

A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has two digits, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

Here's how it works (Ruby example given):
 
 digital_root(16)
 => 1 + 6
 => 7
 
 digital_root(942)
 => 9 + 4 + 2
 => 15 ...
 => 1 + 5
 => 6
 
 digital_root(132189)
 => 1 + 3 + 2 + 1 + 8 + 9
 => 24 ...
 => 2 + 4
 => 6
 
 digital_root(493193)
 => 4 + 9 + 3 + 1 + 9 + 3
 => 29 ...
 => 2 + 9
 => 11 ...
 => 1 + 1
 => 2
 */

//
//func digitalRoot(of number: Int) -> Int {
//
//    var num = number
//    var retVal = 0
//    if number == 0 {
//        return retVal
//    }
//    while num != 0 {
//        let lastDig = num % 10
//        num = num / 10
//        retVal = retVal + lastDig
//        print(" \(retVal)  \(num)  \(lastDig)")
//        
//        if (num == 0) && ((retVal / 10) != 0){
//            print("hello")
//            num = retVal
//            retVal = 0
//        }
//    }
//    
//    return retVal
//    
//    
//}

func digitalRoot(of number: Int) -> Int {
    return (1 + (number - 1) % 9)
}

//func digitalRoot(of number: Int) -> Int {
//    if number < 10 {
//        return number
//    } else {
//        return digitalRoot(of: number % 10 + digitalRoot(of: Int(number / 10)))
//    }
//}
//
//func digitalRoot(of number: Int) -> Int {
//    let dr = String(number).characters.flatMap { Int(String($0)) }.reduce(0, +)
//    return dr == number ? dr : digitalRoot(of: dr)
//}

digitalRoot(of: 12)






