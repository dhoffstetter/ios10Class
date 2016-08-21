//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground" // Can be changed

let otherStr = "Hi, Diane" // Cannot be changed

str = "Hi, playgroud"

// Strings

let name = "Diane"

print("Hello " + name)

// Integer

var myInt = 8

print(myInt*2)

print(myInt + 100)

myInt = myInt + 1

myInt = myInt/5 // round down

print("myInt has value \(myInt)")

let myAge = 49

print("My name is \(name) and I am \(myAge) years old")

var a: Double = 8.73
var b: Float = 8.73
var c = 7.12 // default to Double

print(a/c)

// print(a/b) Cannot combine types

// print (myInt + a)

print (Double(myInt) + a) // cast

print (Double(name))

// Boolean

let gameOver = false

var gameOverString = String(gameOver)

// Challenge

let xDouble: Double = 5.76
let yInt: Int = 8

print("The product of \(xDouble) and \(yInt) is \(xDouble * Double(yInt))")

// Array

var array = [35, 36, 5, 2]

print(array[2])

array.append(1)

array.remove(at: 1)

array.sort()

print(array)

// Challenge

var newArray=[3.87, 7.1, 8.9]

newArray.remove(at: 1)
newArray.append(newArray[0]*newArray[1])

let mixArray = ["Diane", 35, true]
let StringArray = [String]() // create empty array that will have strings

//print (newArray[4]) Out of bounds

print (newArray.count)

// Dictionary

var dictionary = ["computer": "something to play games on", "coffee": "best drink ever"]

print(dictionary["computer"]!)
print(dictionary["house"])

print(dictionary.count)

dictionary["pen"] = "Old fashioned writing thing"

dictionary.removeValue(forKey: "computer")
print(dictionary)

var gameChar = [String: Decimal]() // empty dictionary

gameChar["ghost"] = 8.7

// Challenge

let menu = ["Pizza": 10.99, "Ice Cream": 4.99, "salad": 7.99]

print("The total cost is \(menu["Pizza"]! + menu["Ice Cream"]!)")

// If

let age = 17

if age >= 18 {
  print ("You can play!")
} else {
  print ("You're too young.  Sorry")
}

let name1 = "Rob"

if name1 == "Rob" {
  print("Hi " + name1 + "! You can play.")
} else {
  print("Sorry " + name1 + "! You cannot play.")
}

if name1 == "Rob" && age >= 18 {
  print("You can play!")
} else if name1 == "Rob" {
  print("Sorry Rob you need to get older")
}


if name1 == "Rob" || name1 == "Kristin" {
  print("Welcome " + name1)
}


let isMale = true

if isMale {
  print("You're male")
}

let username = "dianeh"
let password = "hello5"

if username == "dianeho" {
  if password == "hello" {
    print("Welcome")
  } else {
    print("Check your password")
  }
} else {
  if password == "hello" {
    print("Who are you?")
  } else {
    print("Everything is wrong, hacker")
  }

}

var favNum = [7, 3, 12, 85, 55]

favNum.popLast()
favNum











