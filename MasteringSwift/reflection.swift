////
////  main.swift
////  MasteringSwift
////
////  Created by Rob Ranf on 2/26/25.
////
//
//import Foundation
//
//struct Band {
//    let name: String
//    let origin: String
//    let genre: String
//}
//
//let blackpink = Band(name: "Blackpink", origin: "South Korea", genre: "Korean Pop")
//print(String(reflecting: blackpink))
//let mirror = Mirror(reflecting: blackpink)
//print(mirror)
//print("******")
//print(mirror.displayStyle!)
//print("******")
//print(mirror.children)
//print("******")
//print(mirror.subjectType)
//print("******")
//print(mirror.description)
//print("******")
//
//for (label, value) in mirror.children {
//    print("Property: \(label ?? "Unknown"), Value:\(value)")
//}
//print("*******")
//
//// Serializing objects with Mirror
//func serialize<T>(_ value: T) -> [String: Any] {
//    let mirror = Mirror(reflecting: value)
//    var result = [String: Any]()
//    for child in mirror.children {
//        if let propertyName = child.label {
//            result[propertyName] = child.value
//        }
//    }
//    return result
//}
//
//let serializedBand = serialize(blackpink)
//print(serializedBand)
