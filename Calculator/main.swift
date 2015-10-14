//
//  main.swift
//  Calculator
//
//  Created by Vivian on 10/12/15.
//  Copyright © 2015 Vivian. All rights reserved.
//

import Foundation

/* BUILD A CALCULATOR */

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


print("Test for four functions")
print("1 + 4 = \(add(1, 4))") // 5
print("1 - 5 = \(subtract(1, 5))") // -4
print("2 * 19 = \(multiply(2, 19))") // 38
print("12 / 3 = \(divide(12, 3))") // 4
print("4 + 3 = \(mathOp(add, firstNum: 4, secondNum: 3))") // 7
print("4 - 2 = \(mathOp(subtract, firstNum: 4, secondNum: 2))") // 2
print("3 * 6 = \(mathOp(multiply, firstNum: 3, secondNum: 6))") // 18
print("100 / 10 = \(mathOp(divide, firstNum: 100, secondNum: 10))") // 10
print("")



/* ARRAY FUN */

// four functions that takes in an array
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
    if (intArr.count == 0) {
        return 0;
    } else {
        var total = 1
        for nums in intArr {
            total *= nums
        }
        return total
    }
}

let countArray = {
    (intArr: [Int]) -> Int in
    return intArr.count
}

let avgArray = {
    (intArr: [Int]) -> Int in
    if (intArr.count == 0) {
        return 0;
    } else {
        var total = 0
        for nums in intArr {
            total += nums
        }
        return total / intArr.count
    }
}

// function that takes one function as input
func mathOpArray(op: [Int] -> Int, intArray: [Int]) -> Int {
    return op(intArray)
}


print("Test for arrays")
print(addArray([1, 4, 5, 1, 4]))
print(multiplyArray([1, 4, 3, 2]))
print(countArray([2, 4, 5]))
print(avgArray([3, 4, 5, 6]))
print(mathOpArray(addArray, intArray: [3, 4, 5, 6]))
print(mathOpArray(multiplyArray, intArray: [3, 4, 5, 6]))
print(mathOpArray(countArray, intArray: [3, 4, 5, 6]))
print(mathOpArray(avgArray, intArray: [3, 4, 5, 6]))
print("")



/* POINTS */

// functions that takes in tuples
func addPoints(left: (Int, Int), right: (Int, Int)) -> (Int, Int) {
    return (left.0 + right.0, left.1 + right.1)
}

func subtractPoints(left: (Int, Int), right: (Int, Int)) -> (Int, Int) {
    return (left.0 - right.0, left.1 - right.1)
}

let pointA = (1, 4)
let pointB = (4, 2)

print("Test for points")
print(addPoints(pointA, right: pointB))
print(subtractPoints(pointA, right: pointB))
print("")


// functions that takes in dictionaries
func addPoints(dict1: [String:Int], dict2: [String:Int]) -> [String:Int] {
    var intDict = [String:Int]()
    if dict1.keys.contains("x") && dict2.keys.contains("x") {
        intDict["x"] = dict1["x"]! + dict2["x"]!
    } else {
        intDict["N/A"] = nil
    }
    if dict1.keys.contains("y") && dict2.keys.contains("y") {
        intDict["y"] = dict1["y"]! + dict2["y"]!
    } else {
        intDict["N/A"] = nil
    }
    return intDict
}

func subtractPoints(dict1: [String:Int], dict2: [String:Int]) -> [String:Int] {
    var intDict = [String:Int]()
    if dict1.keys.contains("x") && dict2.keys.contains("x") {
        intDict["x"] = dict1["x"]! - dict2["x"]!
    } else {
        intDict["N/A"] = nil
    }
    if dict1.keys.contains("y") && dict2.keys.contains("y") {
        intDict["y"] = dict1["y"]! - dict2["y"]!
    } else {
        intDict["N/A"] = nil
    }
    return intDict
}

func addPoints(dict1: [String:Double], dict2: [String:Double]) -> [String:Double] {
    var doubDict = [String:Double]()
    if dict1.keys.contains("x") && dict2.keys.contains("x") {
        doubDict["x"] = dict1["x"]! + dict2["x"]!
    } else {
        doubDict["N/A"] = nil
    }
    if dict1.keys.contains("y") && dict2.keys.contains("y") {
        doubDict["y"] = dict1["y"]! + dict2["y"]!
    } else {
        doubDict["N/A"] = nil
    }
    return doubDict
}

func subtractPoints(dict1: [String:Double], dict2: [String:Double]) -> [String:Double] {
    var doubDict = [String:Double]()
    if dict1.keys.contains("x") && dict2.keys.contains("x") {
        doubDict["x"] = dict1["x"]! - dict2["x"]!
    } else {
        doubDict["N/A"] = nil
    }
    if dict1.keys.contains("y") && dict2.keys.contains("y") {
        doubDict["y"] = dict1["y"]! - dict2["y"]!
    } else {
        doubDict["N/A"] = nil
    }
    return doubDict
}

let dictA = ["x": 0, "y": 5]
let dictB = ["x": 1, "y": 2]

print("Test for dictionaries")
print(addPoints(dictA, dict2: dictB))
print(subtractPoints(dictA, dict2: dictB))

print(addPoints(["x": 4.5, "y": 5.3], dict2: ["x": 4.5, "y": 5.3]))
print(subtractPoints(["x": 4.5, "y": 5.3], dict2: ["x": 4.5, "y": 5.3]))

print("Test for dictionaries without x's or y's")
print(addPoints(["a": 4.5, "y": 5.3], dict2: ["a": 4.5, "b": 5.3]))
print(subtractPoints(["x": 4.5, "b": 5.3], dict2: ["x": 4.2, "b": 5.3]))