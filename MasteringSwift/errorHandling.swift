////
////  main.swift
////  MasteringSwift
////
////  Created by Rob Ranf on 2/27/25.
////
//
//import Foundation
//
//// Error handling
//enum AppError: Error {
//    case Minor(description: String)
//    case Bad(description: String)
//    case Terrible(description: String)
//}
//
//enum PlayerNumberError: Error {
//    case NumTooHigh(description: String)
//    case NumTooLow(description: String)
//    case NumAlreadyAssigned
//    case NumDoesNotExist
//}
//
//struct BaseballPlayer {
//    let firstName: String
//    let lastName: String
//    let number: Int
//}
//
//struct BaseballTeam {
//    private let maxNumber = 99
//    private let minNumber = 0
//    private var players = [Int: BaseballPlayer]()
//
//    mutating func addPlayer(player: BaseballPlayer) throws {
//        guard player.number < maxNumber else {
//            throw PlayerNumberError.NumTooHigh(description: "Max number is \(maxNumber)")
//        }
//        guard player.number > minNumber else {
//            throw PlayerNumberError.NumTooLow(description: "Min number is \(minNumber)")
//        }
//        guard players[player.number] == nil else {
//            throw PlayerNumberError.NumAlreadyAssigned
//        }
//        players[player.number] = player
//    }
//
//    func getPlayerByNumber(number: Int) throws -> BaseballPlayer {
//        if let player = players[number] {
//            return player
//        } else {
//            throw PlayerNumberError.NumDoesNotExist
//        }
//    }
//}
//
//var myTeam: BaseballTeam = BaseballTeam()
//let shoheiOhtani: BaseballPlayer = BaseballPlayer(firstName: "Shohei", lastName: "Ohtani", number: 17)
//let rokiSasaki: BaseballPlayer = BaseballPlayer(firstName: "Roki", lastName: "Sasaki", number: 11)
//let mookieBetts: BaseballPlayer = BaseballPlayer(firstName: "Mookie", lastName: "Betts", number: 50)
//let yoshi: BaseballPlayer = BaseballPlayer(firstName: "Yoshinobu", lastName: "Yamamoto", number: 18)
//
//try myTeam.addPlayer(player: shoheiOhtani)
//try myTeam.addPlayer(player: rokiSasaki)
//try myTeam.addPlayer(player: mookieBetts)
//
//do {
//    let player = try myTeam.getPlayerByNumber(number: 23)
//    print("Player is \(player.firstName) \(player.lastName)")
//} catch PlayerNumberError.NumDoesNotExist {
//    print("No player has that number")
//}
//
//// Defer functions
//func deferFunction() throws {
//    print("Function started")
//    var myTeam = BaseballTeam()
//    var str: String?
//    defer {
//        print("In defer block")
//        if let s = str {
//            print("str is \(s)")
//        }
//    }
//    str = "Test string"
//    try myTeam.addPlayer(player: yoshi)
//    print("Function finished")
//}
//
//try deferFunction()
//
//// Availability attribute
//if #available(iOS 16.0, macOS 14.10, watchOS 9, *) {
//    print("Minimum requirements met...")
//} else {
//    print("Minimum requirements not met...")
//}
//
//@available(iOS 16.0, *)
//func sayHello() {
//    print("Hello")
//}
