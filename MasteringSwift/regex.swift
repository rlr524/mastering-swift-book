////
////  main.swift
////  MasteringSwift
////
////  Created by Rob Ranf on 3/2/25.
////
//
//import Foundation
//import RegexBuilder
//
//// Regular expressions
//// \b matches a word boundary, \w matches any word character, + means match one or more occurrences
//let regex = /\b\w+\b/
//let text = "Hello from regex literal"
//let matches = text.matches(of: regex)
//for match in matches {
//    print("-- \(text[match.range])")
//}
//
//let pattern = Regex(/\b\w+\b/)
//let newText = "Hello from regex literal"
//let newMatches = newText.matches(of: pattern)
//for m in newMatches {
//    print("** \(newText[m.range])")
//}
//
//let emailValidationPattern = Regex(/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/)
//let bookValidationPattern = Regex(/\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b/).ignoresCase()
//let email = "madison@madison.com"
//let emailMatch = email.wholeMatch(of: bookValidationPattern)
//print(emailMatch ?? "No match")
//
//// Using regex builder
//let bulderPattern = Regex {
//    Anchor.wordBoundary
//    OneOrMore(.word)
//    Anchor.wordBoundary
//}
//
//let str = "Hello from RegEx Builder and Swift"
//let builderMatches = str.matches(of: bulderPattern)
//for m in builderMatches {
//    print("++ \(str[m.range])")
//}
//
//let animalTypeRef = Reference(Substring.self)
//let ageRef = Reference(Int.self)
//let nameRef = Reference(Substring.self)
//let newStr = "I am a girl who is 18 years old and my name is Madison"
//let refPattern = Regex {
//    "I am a "
//    Capture(as: animalTypeRef) {
//        OneOrMore(.word)
//    }
//    " who is "
//    TryCapture(as: ageRef) {
//        OneOrMore(.digit)
//    } transform: { match in
//        Int(match)
//    }
//    " years old and my name is "
//    Capture(as: nameRef) {
//        OneOrMore(.word)
//    }
//}
//let refMatches = newStr.matches(of: refPattern)
//for m in refMatches {
//    print("- Animal type: \(m[animalTypeRef])")
//    print("- Name: \(m[nameRef])")
//    print("- Age: \(m[ageRef])")
//}
