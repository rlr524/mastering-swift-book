////
////  main.swift
////  MasteringSwift
////
////  Created by Rob Ranf on 2/25/25.
////
//
//import Foundation
//
//// Enumerations
//enum Direction: String {
//    case North = "N"
//    case South = "S"
//    case West = "W"
//    case East = "E"
//}
//
//let myDirection = Direction.North
//print("My direction is: \(myDirection.rawValue)")
//print("My direction is: \(myDirection.hashValue)")
//
//enum Month: Int {
//    case January = 1, February, March, April, May, June, July, August, September, October,
//         November, December
//}
//
//let myMonth = Month.June
//print("My birth month is \(myMonth.rawValue)")
//print("My birth month is \(myMonth)")
//
//if let month = Month(rawValue: 22) {
//    print("The month is \(month)")
//} else {
//    print("There is no month for that value...")
//}
//
//let monthAlso = Month(rawValue: 22)
//print("The month is \(String(describing: monthAlso))")
//
//// Associated values
//enum Product {
//    case Book(price: Double, year: Int, pages: Int)
//    case Puzzle(price: Double, pieces: Int)
//}
//
//let masterSwift = Product.Book(price: 49.99, year: 2024, pages: 394)
//let worldPuzzle = Product.Puzzle(price: 9.99, pieces: 200)
//
//enum Weather {
//    case sunny
//    case cloudy
//    case rainy(Int)
//    case snowy(amount: Int)
//}
//
//func showWeather(_ weather: Weather) -> Void {
//    switch weather {
//    case .sunny:
//        print("It's sunny")
//    case .cloudy:
//        print("It's cloudy")
//    case .rainy(let intensity):
//        print("It's raining with an intensity of \(intensity)")
//    case .snowy(let amount):
//        print("It's snowing with an estimated amount of \(amount)")
//    }
//}
//
//showWeather(.sunny)
//showWeather(.rainy(10))
//
//enum Blackpink: String, CaseIterable {
//    case Jisoo = "Turtle rabbit Kim"
//    case Jennie = "NiNi"
//    case Lisa = "Lalisa"
//    case Rosé = "Rosey"
//}
//
//for girl in Blackpink.allCases {
//    print("**\(girl.rawValue)")
//}
//
//enum Days: String, CaseIterable {
//    case Monday = "Mon"
//    case Tuesday = "Tue"
//    case Wednesday = "Wed"
//    case Thursday = "Thu"
//    case Friday = "Fri"
//    case Saturday = "Sat"
//    case Sunday = "Sun"
//}
//
//for weekday in Days.allCases.filter({ $0 != .Saturday && $0 != .Sunday}) {
//    print(" --\(weekday)")
//}
//
//for (i, d) in Days.allCases.enumerated() {
//    print("-- \(i): \(d)")
//}
