////
////  main.swift
////  MasteringSwift
////
////  Created by Rob Ranf on 2/10/25.
////
//
//import Foundation
//
//// Closures
//
//let closOne = { () -> Void in
//    print("Hello, Madison")
//}
//
//closOne()
//
//let closTwo = { (name: String) -> Void in
//    print("Hello, \(name)")
//}
//
//closTwo("Olivia")
//
//let closThree = { (name: String) -> Void in
//    print("Hello, \(name)")
//}
//
//func introduction(_: ()) {
//    print("How are you")
//}
//
//func handlerIntro(handler: (String) -> Void, name: String) {
//    handler(name)
//}
//
//introduction(closTwo("Madison"))
//
//handlerIntro(handler: closThree, name: "Jisoo")
//
//// Closure with anon arguments
//let closFive: (String, String) -> Void = {
//    print("\($0) \($1)")
//}
//
//closFive("Madison", "Ranf")
//
//// Closures with arrays
//let band = ["Jisoo", "Lisa", "Jennie", "Rosé"]
//
//band.map { name in
//    print("Hello, \(name)")
//}
//
//let kids = ["Madison", "Olivia", "Sydney", "Hyein"]
//
//kids.map { print("A spanking for \($0)") }
//
//var messages = kids.map {
//    (name: String) -> String in
//    return "A bare spanking for \(name)"
//}
//
//for message in messages {
//    print(message)
//}
//
//let spankKid = {
//    (name: String) -> Void in
//    if (name.hasPrefix("S")) {
//        print("\(name) is getting the paddle on the bare")
//    } else {
//        print("\(name) is getting it otk bare")
//    }
//}
//
//spankKid("Sydney")
//
//// Advanced closure
//enum LogLevel {
//    case info, warning, error
//}
//
//class Logger {
//    typealias logLevelHandler = (String) -> Void
//
//    private var handlers: [LogLevel: [logLevelHandler]] = [:]
//
//    func registeredHandler(for level: LogLevel, handler: @escaping logLevelHandler) {
//        if handlers[level] == nil {
//            handlers[level] = []
//        }
//        handlers[level]?.append(handler)
//    }
//
//    func log(_ message: String, level: LogLevel) {
//        if let levelHandlers = handlers[level] {
//            for handler in levelHandlers {
//                handler(message)
//            }
//        }
//    }
//}
//
//let logger = Logger()
//logger.registeredHandler(for: .info) { message in
//    print("INFO: \(message)")
//}
//logger.registeredHandler(for: .warning) { message in
//    print("WARNING: \(message)")
//}
//logger.registeredHandler(for: .error) { message in
//    print("ERROR: \(message)")
//}
//
//logger.log("For your information", level: .info)
//
//// Result builder
//@resultBuilder
//struct StringBuilder {
//    static func buildBlock(_ components: String...) -> String {
//        return components.joined()
//    }
//}
//
//func buildString(@StringBuilder _ components: () -> String) -> String {
//    return components()
//}
//
//let result = buildString {
//    "Hello, "
//    "Madison! "
//    "You "
//    "need "
//    "a "
//    "spanking!"
//}
//
//print(result)
