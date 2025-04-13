////
////  main.swift
////  MasteringSwift
////
////  Created by Rob Ranf on 4/11/25.
////
//
//import Foundation
//
//extension BinaryInteger {
//    func binaryFormat(_ nibbles: Int) -> String {
//        var number = self
//        var binaryString = ""
//        var counter = 0
//        let totalBits = nibbles * 4
//        for _ in (1...totalBits).reversed() {
//            binaryString.insert(contentsOf: "\(number & 1)", at: binaryString.startIndex)
//            number >>= 1
//            counter += 1
//            if counter % 4 == 0 && counter < totalBits {
//                binaryString.insert(contentsOf: " ", at: binaryString.startIndex)
//            }
//        }
//        return binaryString
//    }
//}
//
//let en = 42
//print("Little-endian representation", en.littleEndian)
//print("Big-endian represenataion", en.bigEndian)
//// Little-endianness (where the least significant bit is stored at the lowest memory address) is the
//// dominant representation for processor architectures and is used in
//// x86, most ARM implementations, and RISC-V implementations. By contrast, big-endianness is the
//// dominent representation in networking protocols such as IP, and is called "network order".
//
//// Bitwise operators and printing binaries
//print(String(en, radix: 2))
//print(String(53, radix: 2))
//
//print(53.binaryFormat(2))
//print(230.binaryFormat(2))
//
//print("*****************Bitwise OR***************************")
//let numberOne = 42
//let numberTwo = 11
//print("\(numberOne) = \(numberOne.binaryFormat(2))")
//print("\(numberTwo) = \(numberTwo.binaryFormat(2))")
//let bitwiseAndAddResults = numberOne & numberTwo
//print("\(bitwiseAndAddResults) = \(bitwiseAndAddResults.binaryFormat(2))")
//
//print("*****************Bitwise AND**************************")
//let numberOne_: Int8 = 42
//let numberTwo_: Int8 = 11
//print("\(numberOne_) = \(numberOne_.binaryFormat(2))")
//print("\(numberTwo_) = \(numberTwo_.binaryFormat(2))")
//let orResults = numberOne_ | numberTwo_
//print("\(orResults) = \(orResults.binaryFormat(2))")
//
//print("*****************Bitwise XOR**************************")
//let numberOne__: Int8 = 42
//let numberTwo__: Int8 = 11
//print("\(numberOne__) = \(numberOne__.binaryFormat(2))")
//print("\(numberTwo__) = \(numberTwo__.binaryFormat(2))")
//let xorResults = numberOne__ ^ numberTwo__
//print("\(xorResults) = \(xorResults.binaryFormat(2))")
//
//print("*****************Bitwise NOT**************************")
//let numberBWNot: Int8 = 42
//print("\(numberBWNot) = \(numberBWNot.binaryFormat(2))")
//let notResults = ~numberBWNot
//print("\(notResults) = \(notResults.binaryFormat(2))")
//
//// Bitwise shift operators left shift (<<) and right shift (>>)
//print("*****************Bitwise Shift************************")
//let leftNumber = 24
//print("\(leftNumber) = \(leftNumber.binaryFormat(2))")
//let leftResults = leftNumber << 1
//print("\(leftResults) = \(leftResults.binaryFormat(2))")
//// Note left shift by one will multiply the number by two
//let leftTwoResults = leftNumber << 2
//print("\(leftTwoResults) = \(leftTwoResults.binaryFormat(2))")
//// Left shift by two will multiple the number by four
//let rightNumber = 18
//print("\(rightNumber) = \(rightNumber.binaryFormat(2))")
//let rightResults = rightNumber >> 1
//print("\(rightResults) = \(rightResults.binaryFormat(2))")
//// Right shifting by one will divide by 2
//let rightResultsTwo = rightNumber >> 2
//print("\(rightResultsTwo) = \(rightResultsTwo.binaryFormat(2))")
//// Right shifting by two will divide by 2 then again by 2...and so on...Note the result will be an
//// int if the actual result is a float, it will convert it to an int (e.g. 18 / 2 / 2 = 4, not 4.5)
//
