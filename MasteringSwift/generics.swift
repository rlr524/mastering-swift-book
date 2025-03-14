////
////  main.swift
////  MasteringSwift
////
////  Created by Rob Ranf on 2/17/25.
////
//
//import Foundation
//
//func swapValues<T>(a: inout T, b: inout T) {
//    let tmp = a
//    a = b
//    b = tmp
//}
//
//var a = "Madison"
//var b = "Olivia"
//
//let result: () = swapValues(a: &a, b: &b)
//print(a)
//print(b)
//
//// Type constraint (we are constraining a generic type by requiring
//// it to conform to the Comparable protocol)
//func genericComparable<T: Comparable>(a: T, b: T) -> Bool {
//    a == b
//}
//
//print(genericComparable(a: 1, b: 1))
//print(genericComparable(a: "1", b: "1"))
////print(genericComparable(a: 1, b: "Madison"))
////print(genericComparable(a: "1", b: 1))
//print(genericComparable(a: 1.0, b: 1))
//
//// Generic types
//class List<T> {
//    private var items = [T]()
//
//    func add(item: T) {
//        items.append(item)
//    }
//
//    func getItemAtIndex(index: Int) -> T? {
//        if items.count > index {
//            return items[index]
//        } else {
//            return nil
//        }
//    }
//}
//
//var stringList = List<String>()
//var intList = List<Int>()
//
//struct Student {
//    var name: String
//    var grade: Int
//}
//
//var customList = List<Student>()
//
//var madison: Student = Student(name: "Madison", grade: 10)
//var olivia: Student = Student(name: "Olivia", grade: 10)
//
//customList.add(item: madison)
//customList.add(item: olivia)
//
//print(customList.getItemAtIndex(index: 1)!)
//
//if let firstStudent: Student = customList.getItemAtIndex(index: 0) {
//    print(firstStudent.name)
//}
//
//// Conditionally add an extension with a generic
//extension List where T: Numeric {
//    func sum() -> T {
//        items.reduce(0, +)
//    }
//}
//
//intList.add(item: 2)
//intList.add(item: 4)
//intList.add(item: 6)
//
//print(intList.sum())
//
//// Generic subscripts
//struct Person {
//    var name: String
//    var age: Int
//
//    subscript<T: Hashable>(item: T) -> Int {
//        return item.hashValue
//    }
//}
//
//var jisoo: Person = Person(name: "Jisoo", age: 30)
//print(jisoo.age.hashValue)
