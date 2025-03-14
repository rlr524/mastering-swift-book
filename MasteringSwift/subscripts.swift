////
////  main.swift
////  MasteringSwift
////
////  Created by Rob Ranf on 3/3/25.
////
//
//import Foundation
//
//// Custom subscripts
//class BandMembers {
//    private var names = ["Jisoo", "Rosé", "Jennie", "Lisa"]
//    subscript(index: Int) -> String {
//        get {
//            return names[index]
//        }
//        set {
//            names[index] = newValue
//        }
//    }
//}
//
//var blinks = BandMembers()
//print(blinks[0])
//
//// Read only custom subscripts - Don't declare a setter or a getter, or just declare a getter
//class Pastas {
//    private var names = ["Ravioli", "Spaghetti", "Lasagne"]
//    subscript(index: Int) -> String {
//        names[index]
//    }
//}
//
//// Calculated subscripts
//struct MathTable {
//    var num: Int
//    subscript(index: Int) -> Int {
//        return num * index
//    }
//}
//
//var myMathTable = MathTable(num: 18)
//print(myMathTable[4])
//
//// Static subscripts
//struct Hello {
//    static subscript (name: String) -> String {
//        return "Hello \(name)"
//    }
//}
//
//let greeting = Hello["Madison"]
//print(greeting)
//
//// External names for subscripts
//struct MathTableNew {
//    var num: Int
//    subscript(multiply index: Int) -> Int {
//        return num * index
//    }
//    subscript(add index: Int) -> Int {
//        return num + index
//    }
//}
//
//var myMathTableNew = MathTableNew(num: 18)
//print(myMathTableNew[multiply: 5])
//print(myMathTableNew[add: 5])
//
//// Multidimensional subscripts
//struct TicTacToe {
//    var board = [["-","-","-"],["-","-","-"],["-","-","-"]]
//    subscript(x: Int, y: Int) -> String {
//        get {
//            return board[x][y]
//        }
//        set {
//            board[x][y] = newValue
//        }
//    }
//
//    func printBoard() {
//        for plane in board {
//            for row in plane {
//                for element in row {
//                    print(element, terminator: " ")
//                }
//            }
//            print()
//        }
//    }
//}
//
//
//var board = TicTacToe()
//board[1,1] = "x"
//board[0,0] = "o"
//board[2,0] = "o"
//board[1,0] = "x"
//board[1,2] = "o"
//board.printBoard()
