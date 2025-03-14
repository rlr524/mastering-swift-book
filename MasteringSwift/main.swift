//
//  main.swift
//  MasteringSwift
//
//  Created by Rob Ranf on 3/13/25.
//

import Foundation

// Property observers
struct myStruct {
    var myProp: String {
        willSet(newName) {
            print("Preparing to change the value of myProp from \(myProp) to \(newName)")
        }
        didSet {
            if oldValue != myProp {
                print("The value of myProp changed from \(oldValue) to \(myProp)")
            }
        }
    }
}

var thing = myStruct(myProp: "OriginalProp")
thing.myProp = "NewProp"

struct Product {
    var name: String
    var price: Double
    var stockLevel: Int {
        didSet {
            if stockLevel < minimumStockLevel {
                print("Stock level of \(stockLevel) is below minimum for \(name)")
                reorderNotification()
            }
        }
    }

    var minimumStockLevel: Int
    init(name: String, price: Double, stockLevel: Int, minimumStockLevel: Int) {
        self.name = name
        self.price = price
        self.stockLevel = stockLevel
        self.minimumStockLevel = minimumStockLevel
    }

    mutating func sell(units: Int) {
        print("Selling \(units) units of \(name) ")
        stockLevel -= units
    }

    func reorderNotification() {
        print("Current stock of \(name) is \(stockLevel). Time to reorder.")
    }
}

var apple = Product(name: "apple", price: 0.99, stockLevel: 100, minimumStockLevel: 95)
apple.sell(units: 10)

// Property wrappers
// Use generics to allow the wrapper to be used with any data type
@propertyWrapper
struct MyPropertyWrapper<T> {
    private var value: T
    var wrappedValue: T {
        get { return value }
        set { /* set the value */ }
    }
    init(wrappedvalue initialValue: T) {
        self.value = initialValue
    }
}

@propertyWrapper
struct Capitalized {
    private var value: String = ""

    var wrappedValue: String {
        get { value }
        set { value = newValue.capitalized}
    }
}
