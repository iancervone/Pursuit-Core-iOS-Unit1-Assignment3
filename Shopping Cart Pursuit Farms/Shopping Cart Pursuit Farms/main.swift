//
//  main.swift
//  Shopping Cart Pursuit Farms
//
//  Created by Ian Cervone on 7/25/19.
//  Copyright © 2019 Ian Cervone. All rights reserved.
//

import Foundation

var shopping = true
print("Welcome to Pursuit Farms, your one stop shop if all you only need are 5 specific items")
//*******************vvvvvv
struct Cart {
    var items: [Item]
    var quantity: [Int]
    // Add methods below as needed
}
//*******************^^^^^

//*******************vvvvv
struct Item {
    var name = String()
    var cost = Double()
    var quantity: Double = 0
}

var apples = Item(name: "Apples", cost: 1.99, quantity: 0)
var bagles = Item(name: "Bagles", cost: 1.75, quantity: 0)
var cheese = Item(name: "Cheese", cost: 5.99, quantity: 0)
var lemons = Item(name: "Lemons", cost: 1.25, quantity: 0)
var steaks = Item(name: "Steaks", cost: 3.99, quantity: 0)
//*******************^^^^^

//*******************vvvvv
enum PaymentType: Int {
    case cash = 0
    case credit = 1
}
//*******************^^^^^

var cashOrCard = Int()

//*******************vvvvv
func getIntFromUser() -> Int {
    print("How will you be paying today?")
    print("To pay with cash enter: 0, to pay with credit enter: 1")
    print("Enter your number here: ", terminator: "")
    while true {
        let input = readLine()
        if let input = input,
            let userNum = Int(input) {
            cashOrCard = userNum
            return userNum
        }
    }
}
//getIntFromUser()
//*******************^^^^^


//*******************vvvvv
func checkOut() {
    var total = (apples.quantity * apples.cost) + (bagles.quantity * bagles.cost) + (cheese.quantity * cheese.cost) + (lemons.quantity * lemons.cost) + (steaks.quantity * steaks.cost)
    var cashSavings = total / 4.0
    var cashCost = total - cashSavings
    if cashOrCard == PaymentType.cash.rawValue {
        print("Total Cost = $\(cashCost)")
        print("You saved $\(cashSavings) by paying with cash")
    } else {
        if cashOrCard == PaymentType.credit.rawValue {
            print("Total Cost = $\(total)")
            print("You could have saved $\(cashSavings) by paying with cash instead of credit")
            
        }
    }
}
//*******************^^^^^

//*******************vvvvv
func shop() {
    print("Below is the vast array of items which we sell:")
    print("Item #    Item Name    Item Cost")
    print("  1         \(apples.name)       $\(apples.cost)")
    print("  2         \(bagles.name)       $\(bagles.cost)")
    print("  3         \(cheese.name)       $\(cheese.cost)")
    print("  4         \(lemons.name)       $\(lemons.cost)")
    print("  5         \(steaks.name)       $\(steaks.cost)")
    print("Enter the item number(1-5) you would like to purchase, or enter number 9 to checkout: ", terminator: "")
    
    let userItem = readLine()!
    for itemNum in userItem {
        switch itemNum {
        case "1":
            apples.quantity += 1
            print("1 Apple has been added to your cart")
        case "2":
            bagles.quantity += 1
            print("1 Bagle has been added to your cart")
        case "3":
            cheese.quantity += 1
            print("1 Cheese has been added to your cart")
        case "4":
            lemons.quantity += 1
            print("1 Lemon has been added to your cart")
        case "5":
            steaks.quantity += 1
            print("1 Steak has been added to your cart")
        case "9":
            shopping = false
        default:
            print("You entered a value that does not compute, this is really quite simple, we only sell 5 items so enter a number between 1-5 to add the item you want, or if you are ready to checkout enter 9")
        }
    }
}
//shop()
//*******************^^^^^

func getGroceries() {
    repeat {
        shop()
    }
    while (shopping) == true
    getIntFromUser()
    checkOut()
}

getGroceries()









//enum PaymentType: Int {
//    case cash = 0
//    case credit = 1
//    //
    //    func checkOut() -> Double {
    //        var subTotal = (apples.quantity * apples.cost) + (bagles.quantity * bagles.cost) + (cheese.quantity * cheese.cost) + (lemons.quantity * lemons.cost) + (steaks.quantity * steaks.cost)
    //        var cashSavings = subTotal / 4.0
    //        switch self {
    //        case .cash: return subTotal - cashSavings
    //        case . credit: return subTotal
    //        }
    //    }
//}









//let userItem = readLine()
//if let userItem = userItem {
//    let itemNum = userItem
//    let intItem = Int(itemNum)
//
//    for num in intItem {
//        switch num {
//        case 1 :
//            print("")
//        case 2 :
//            print("")
//        case 3 :
//            print("")
//        case 4 :
//            print("")
//        case 5 :
//            print("")
//        case 0 :
//            print("checkout time")
//        default :
//            print("You entered a value that does not compute, this is really quite simple, we only sell 5 items so enter a number between 1-5 to add that item, or enter 0 if you would like to checkout")
//        }
//    }
//}
