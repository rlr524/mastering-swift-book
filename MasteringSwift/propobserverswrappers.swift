////
////  main.swift
////  MasteringSwift
////
////  Created by Rob Ranf on 3/13/25.
////
//
//import Foundation
//
//// Property observers
//struct myStruct {
//    var myProp: String {
//        willSet(newName) {
//            print("Preparing to change the value of myProp from \(myProp) to \(newName)")
//        }
//        didSet {
//            if oldValue != myProp {
//                print("The value of myProp changed from \(oldValue) to \(myProp)")
//            }
//        }
//    }
//}
//
//var thing = myStruct(myProp: "OriginalProp")
//thing.myProp = "NewProp"
//
//struct Product {
//    var name: String
//    var price: Double
//    var stockLevel: Int {
//        didSet {
//            if stockLevel < minimumStockLevel {
//                print("Stock level of \(stockLevel) is below minimum for \(name)")
//                reorderNotification()
//            }
//        }
//    }
//
//    var minimumStockLevel: Int
//    init(name: String, price: Double, stockLevel: Int, minimumStockLevel: Int) {
//        self.name = name
//        self.price = price
//        self.stockLevel = stockLevel
//        self.minimumStockLevel = minimumStockLevel
//    }
//
//    mutating func sell(units: Int) {
//        print("Selling \(units) units of \(name) ")
//        stockLevel -= units
//    }
//
//    func reorderNotification() {
//        print("Current stock of \(name) is \(stockLevel). Time to reorder.")
//    }
//}
//
//var apple = Product(name: "apple", price: 0.99, stockLevel: 100, minimumStockLevel: 95)
//apple.sell(units: 10)
//
//// Property wrappers
//// Use generics to allow the wrapper to be used with any data type
//@propertyWrapper
//struct MyPropertyWrapper<T> {
//    private var value: T
//    var wrappedValue: T {
//        get { return value }
//        set { /* set the value */ }
//    }
//    init(wrappedvalue initialValue: T) {
//        self.value = initialValue
//    }
//}
//
//@propertyWrapper
//struct Capitalized {
//    private var value: String = ""
//
//    var wrappedValue: String {
//        get { value }
//        set { value = newValue.capitalized}
//    }
//}
//
//struct Person {
//    @Capitalized var name: String
//    
//    init(name: String) {
//        self.name = name
//    }
//}
//
//let madison = Person(name: "Madison")
//print(madison.name)
//
//@propertyWrapper
//struct ValidateRange {
//    private var value: Int
//    private let range: ClosedRange<Int>
//    
//    var wrappedValue: Int {
//        get { value }
//        set { value = max(range.lowerBound, min(range.upperBound, newValue)) }
//    }
//    
//    init(wrappedValue: Int, _ range: ClosedRange<Int>) {
//        self.value = max(range.lowerBound, min(range.upperBound, wrappedValue))
//        self.range = range
//    }
//}
//
//struct Item {
//    @ValidateRange(1...100) var quantity: Int = 0
//}
//
//var item = Item(quantity: 10)
//print(item.quantity)
//item.quantity = 1000
//print(item.quantity)
