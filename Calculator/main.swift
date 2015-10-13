//
//  main.swift
//  Calculator
//
//  Created by Vivian on 10/12/15.
//  Copyright © 2015 Vivian. All rights reserved.
//

import Foundation

// four functions to add, subtract, multiply, divide
let add = {
    (firstNum: Int, secondNum: Int) -> Int in
    return firstNum + secondNum
}

let subtract = {
    (firstNum: Int, secondNum: Int) -> Int in
    return firstNum - secondNum
}

let multiply = {
    (firstNum: Int, secondNum: Int) -> Int in
    return firstNum * secondNum
}

let divide = {
    (firstNum: Int, secondNum: Int) -> Int in
    return firstNum / secondNum
}

// function that takes one function as input
func mathOp(op: (Int, Int) -> Int, firstNum: Int, secondNum: Int) -> Int {
    return op(firstNum, secondNum)
}


print("1 + 4 = \(add(1,4))")
print("1 - 5 = \(subtract(1,5))")
print("2 * 19 = \(multiply(2,19))")
print("12 / 3 = \(divide(12,3))")
print("4 + 3 = \(mathOp(add, firstNum: 4, secondNum: 3))")




let addArray = {
    (intArr: [Int]) -> Int in
    var total = 0
    for nums in intArr {
        total += nums
    }
    return total
}

let multiplyArray = {
    (intArr: [Int]) -> Int in
    var total = 1
    for nums in intArr {
        total *= nums
    }
    return total
}

let countArray = {
    (intArr: [Int]) -> Int in
    return intArr.count
}

let avgArray = {
    (intArr: [Int]) -> Int in
    var total = 0
    for nums in intArr {
        total += nums
    }
    return total / intArr.count
}

print(addArray([1, 4, 5, 1, 4]))
print(multiplyArray([1, 4, 3, 2]))
print(countArray([2, 4, 5]))
print(avgArray([3, 4, 5, 6]))

func mathOpArray(intArray: [Int], op: [Int] -> Int) -> Int {
    return op(intArray)
}



func addPoints(left: (Int, Int), right: (Int, Int)) -> (Int, Int) {
    return (left.0 + right.0, left.1 + right.1)
}

func subtractPoints(left: (Int, Int), right: (Int, Int)) -> (Int, Int) {
    return (left.0 - right.0, left.1 - right.1)
}

print(addPoints((1,4), right: (2,4)))
print(subtractPoints((3,4), right: (5, 2)))


func addPoints(left: Dictionary<String, Int>, right: Dictionary<String, Int>) -> Dictionary<String, Int> {
     return ["x": left["x"]! + right["x"]!, "y": left["y"]! + right["y"]!]
}

func subtractPoints(left: Dictionary<String, Int>, right: Dictionary<String, Int>) -> Dictionary<String, Int> {
     return ["x": left["x"]! - right["x"]!, "y": left["y"]! - right["y"]!]
}



