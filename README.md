## Unit 1 Command Line Calculator

## Instructions for lab submission 

1. Fork the assignment repo
1. Clone your Fork to your machine
1. Complete the lab
1. Push your changes to your Fork
1. Submit a Pull Request back to the assignment repo
1. Paste a link to of your Fork on Canvas and submit

## Question One

Exhibit A. (operations dictionary)

```swift
var operations: ([String: (Double, Double) -> Double]) = ["+": { $0 + $1 },
                                                          "-": { $0 - $1 },
                                                          "*": { $0 * $1 },
                                                          "/": { $0 / $1 }]
```

### Part 1a: Command Line Math Stuff

Incorporate `operations` into a command line application. Parse input from the user into operator, and two operands, run the operation and return the answer. Reject non-conforming ops with a message.

For example, your console might look like this:

> 5 + 3
> 
> 5 + 3 = 8
> 
> 5 * 3
> 
> 5 * 3 = 15
> 
> 5 & 3
> 
> Unknown operator: &
> 
> Exit

### Part 1b: Random Math Stuff

Make question mark perform a random operation.

### Part 1c. Random Math Stuff Game

When the question mark operator is used the application will secretly perform the operation and return only the result. The user is then prompted to guess the operator used.

For this, your console might look like this:

> 5 + 3
> 
> 5 + 3 = 8
> 
> 5 ? 3
> 
> 15
> 
> \-
> 
> Nope!
> 
> *
> 
> Correct!
> 
> Exit


******************************************
QUESTION ONE CODE
******************************************

//
//  main.swift
//  calculator
//
//  Created by Ian Cervone on 7/20/19.
//  Copyright © 2019 Ian Cervone. All rights reserved.
//

import Foundation
func welcome() {
print("This is not the smartest calculator, it can only do basic math using +, -, *, /,")
print("Enter a math problem and press enter")
}
welcome()


let userInput = readLine()!
var leftNum = Double()
var rightNum = Double()
var mathOperator = String()


func processInput() {
let inputText = userInput.components(separatedBy: " ")
var wrappedLeftNum = Double(inputText[0])
if let num1 = wrappedLeftNum {
leftNum = num1
}
var wrappedRightNum = Double(inputText[2])
if let num2 = wrappedRightNum {
rightNum = num2
}
mathOperator = inputText[1]
}
processInput()



var operations: ([String: (Double, Double) -> Double]) = ["+": { $0 + $1 },
"-": { $0 - $1 },
"*": { $0 * $1 },
"/": { $0 / $1 }]



func calculate() -> Double {
var sum = Double()
for (key, value) in operations {
if key == mathOperator {
sum = value(leftNum, rightNum)
}
}
return sum
}


func random() {
if mathOperator == "?" {
var randomArray: [String] = ["+", "-", "*", "/"]
var wrappedRandom = randomArray.randomElement()
if let sign = wrappedRandom {
mathOperator = sign
}
print("Can you guess the math operation that created this number?")
}
}
random()
print(calculate())
var userGuess = readLine()!

func guess() {
while userGuess != mathOperator {
print("guess again")
userGuess = readLine()!
if userGuess == mathOperator {
print("you have chosen wisley")
}
}
}
guess()
////**********************************



//for x in operations {
//    if mathOperator == "+" {
//    print(leftNum + rightNum)
//} else {
//    if mathOperator == "-" {
//    print(leftNum - rightNum)
//} else {
//    if mathOperator == "*" {
//    print(leftNum * rightNum)
//} else {
//    if mathOperator == "/" {
//    print(leftNum / rightNum)
//    } else {
//        print("What are you doing? This is a calculator use: +, -, *, /, and lets do some math.  Also this is not the smartest calculator so you must enter numbers as a decimal")
//        }
//}
//}
//}
//}



////**********************************



//    func mathOperator(left: Double, operation: String, right: Double) -> Double {
//            switch {
//            case "+":
//                print(leftNum + rightNum)
//                return (leftNum + rightNum)
//            case "-":
//                print(leftNum - rightNum)
//                return (leftNum - rightNum)
//            case "*":
//                print(leftNum * rightNum)
//                return (leftNum * rightNum)
//            case "/":
//                print(leftNum / rightNum)
//                return (leftNum / rightNum)
//            default:
//                print("What are you doing? This is a calculator use: +, -, *, /, and lets do some math")
//                return DBL_MAX
//            }
//        }









******************************************
******************************************


## Question Two:
### Add filter, map and reduce to your calculator

### Part 2a: Implement your own filter function

Your filter will need to support:

- Numbers less than a given number
- Numbers greater than a given number


You only need to filter Ints  You will write your **own** filter method (not using the built in one).  Use this as a starting point.

```swift
func myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {

}
```

Example:

>filter 1,5,2,7,3,4 by < 4
>
>1,2,3


### Part 2b: Implement your own map function

Your map will need to support:

- Multiplying by a given number
- Dividing by a given number

Example:

>map 1,5,2,7,3,4 by * 3
>
>3,15,6,21,9,12


### Part 2c: Implement your own reduce function

Your reduce will need to support:

- Summing an array starting at a given value
- Multiplying an array starting at a given value

>reduce 1,5,2,7,3,4 by + 4
>
>26


</br>

**Command-Line Calculator**  

<p align="center">
    <img src="https://github.com/joinpursuit/Pursuit-Core-iOS-Unit1-Assignment3/blob/master/Images/cli-calculator.gif" width="800" height="598" />
</p>
