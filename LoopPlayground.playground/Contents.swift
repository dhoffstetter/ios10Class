//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var i = 1

while i < 10 {
  
  print(i)
  
  i += 1
}

i = 1

while i <= 20
{
  print(7*i)
  i += 1
}

var array = [7, 23, 98, 1, 0, 763]
array.count

i = 0

while i < array.count {
  
  array[i] += 1
  print(array[i])
  i += 1
  
}

print(array)

// For

let newArray = [8, 4, 8, 1]

for number in newArray {
  print(number)
}


let nameArray = ["Diane", "Dave", "Amanda", "Robyn", "Jason"]

for name in nameArray {
  print("Hello " + name)
}

var numbers = [7, 2, 9, 4, 1]

for (index, value) in numbers.enumerated() {
  
  numbers[index] += 1
  
}

print(numbers)

var numbersArray = [Double]()
numbersArray = [8, 7, 19, 28]

for (index, value) in numbersArray.enumerated() {
  
  numbersArray[index] /= 2
  
}

print(numbersArray)




