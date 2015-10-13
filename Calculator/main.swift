//
//  main.swift
//  Calculator
//
//  Created by Vivian on 10/12/15.
//  Copyright © 2015 Vivian. All rights reserved.
//

import Foundation

print("Hello, World!")


//four functions to add, subtract, multiply, divide

let add = {
    (left : Int, right : Int) -> Int in return left + right
}

let subtract = {
    (left : Int, right : Int) -> Int in return left - right
}

let multiply = {
    (left : Int, right : Int) -> Int in return left * right
}

let divide = {
    (left : Int, right : Int) -> Int in return left / right
}

func mathOp(left: Int, right : Int, op : (Int, Int) -> Int) -> Int {
    return op(left, right)
}


print(add(1,4))
print(subtract(1,5))
print(multiply(2,19))
print(divide(10,3))

print(mathOp(1,right: 4,op: add))


let addArray = {
    (intArr : [Int]) -> Int in
    var total = 0
    for nums in intArr {
        total += nums
    }
    return total
}

let multiplyArray = {
    (intArr : [Int]) -> Int in
    var total = 1
    for nums in intArr {
        total *= nums
    }
    return total
}

print(addArray([1, 4, 5, 1, 4]))
print(multiplyArray([1, 4, 3, 2]))


let countArray = {
    (intArr : [Int]) -> Int in
    return intArr.count
}












