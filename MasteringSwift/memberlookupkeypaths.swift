////
////  main.swift
////  MasteringSwift
////
////  Created by Rob Ranf on 3/24/25.
////
//
//import Foundation
//
//// Dynamic member lookup
//@dynamicMemberLookup
//struct BaseballTeam {
//    let city: String
//    let nickName: String
//    let wins: Double
//    let losses: Double
//    let year: Int
//    
//    subscript(dynamicMember key: String) -> String {
//        switch key {
//        case "fullname":
//            return "\(city) \(nickName)"
//        case "percent":
//            let per = wins/(wins + losses)
//            return String(per)
//        default:
//            return "Unknown request"
//        }
//    }
//}
//
//var padres = BaseballTeam(city: "San Diego", nickName: "Padres",  wins: 70, losses: 92, year: 2025)
//print("The \(padres.fullname) won \(padres.percent) of their games in \(padres.year)")
//
//// Key paths
//struct BasketballTeam {
//    var city: String
//    var nickName: String
//}
//
//let cityKeyPath = \BasketballTeam.city
//
//var celtics = BasketballTeam(city: "Boston", nickName: "Celtics")
//let teamCity = celtics[keyPath: cityKeyPath]
//celtics[keyPath: cityKeyPath] = "Boston MA"
//
//struct Season {
//    let team: BasketballTeam
//    let wins: Double
//    let losses: Double
//    let year: Int
//}
//let seasonTeamCityKeyPath = \Season.team.city
//
//func getProperty<T, E>(of object: T, using keyPath: KeyPath<T, E>) -> E {
//    return object[keyPath: keyPath]
//}
//
//let someTeam = BasketballTeam(city: "Los Angeles", nickName: "Lakers")
//let someTeamCity = getProperty(of: someTeam, using: cityKeyPath)
//
//let anotherTeam = BasketballTeam(city: "San Antonio", nickName: "Spurs")
//let anotherTeamCity = getProperty(of: anotherTeam, using: \.city)
//
//
//// Map and filter functions with key paths
//struct Person {
//    let name: String
//    let age: Int
//}
//
//let people = [
//    Person(name: "Jisoo", age: 30),
//    Person(name: "Madison", age: 22),
//    Person(name: "Mei", age: 12)
//]
//
//let names = people.map(\.name)
//print(names)
//
//let adults = people.filter { $0[keyPath: \.age] > 24 }
//print(adults)
//let kids = people.filter { $0[keyPath: \.age] < 25}
//print(kids)
