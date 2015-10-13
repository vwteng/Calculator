//
//  main.swift
//  Calculator
//
//  Created by Vivian on 10/12/15.
//  Copyright © 2015 Vivian. All rights reserved.
//

import Foundation

print("Hello, World!")


// four functions to add, subtract, multiply, divide
let add = {
    (firstNum : Int, secondNum : Int) -> Int in
    return firstNum + secondNum
}

let subtract = {
    (firstNum : Int, secondNum : Int) -> Int in
    return firstNum - secondNum
}

let multiply = {
    (firstNum : Int, secondNum : Int) -> Int in
    return firstNum * secondNum
}

let divide = {
    (firstNum : Int, secondNum : Int) -> Int in
    return firstNum / secondNum
}

func mathOp(op : (Int, Int) -> Int, firstNum: Int, secondNum : Int) -> Int {
    return op(firstNum, secondNum)
}


print(add(1,4))
print(subtract(1,5))
print(multiply(2,19))
print(divide(10,3))

print(mathOp(add, firstNum: 1, secondNum: 4))


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

let avgArray = {
    (intArr : [Int]) -> Int in
    var total = 0
    for nums in intArr {
        total += nums
    }
    return total / intArr.count
}

print(countArray([2, 4, 5]))
print(avgArray([3, 4, 5, 6]))

func mathOpArray(intArray: [Int], op : [Int] -> Int) -> Int {
    return op(intArray)
}


func addPoints(left : (Int, Int), right : (Int, Int)) -> (Int, Int) {
    return (left.0 + right.0, left.1 + right.1)
}

func subtractPoints(left : (Int, Int), right : (Int, Int)) -> (Int, Int) {
    return (left.0 - right.0, left.1 - right.1)
}

print(addPoints((1,4), right : (2,4)))
print(subtractPoints((3,4), right: (5, 2)))













