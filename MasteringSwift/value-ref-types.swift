////
////  main.swift
////  MasteringSwift
////
////  Created by Rob Ranf on 2/20/25.
////
//
//import Foundation
//
//// Value vs reference types
//struct GradeValueType {
//    var name: String
//    var assignment: String
//    var grade: Int
//}
//
//class GradeReferenceType {
//    var name: String
//    var assignment: String
//    var grade: Int
//
//    init(name: String, assignment: String, grade: Int) {
//        self.name = name
//        self.assignment = assignment
//        self.grade = grade
//    }
//}
//
//var ref = GradeReferenceType(name: "Madison", assignment: "English", grade: 90)
//var val = GradeValueType(name: "Madison", assignment: "English", grade: 90)
//
//func extraCreditRefType(ref: GradeReferenceType, extraCredit: Int) {
//    ref.grade += extraCredit
//}
//
//func extraCreditValType(val: inout GradeValueType, extraCredit: Int) {
//    val.grade += extraCredit
//}
//
//func getGradeForAssignment(assignment: inout GradeValueType) {
//    let num = Int.random(in: 80..<100)
//    assignment.grade = num
//    print("Grade for \(assignment.name) is \(num)")
//}
//
//getGradeForAssignment(assignment: &val)
//
//var mathGrades = [GradeValueType]()
//var students = ["Madison", "Olivia", "Jason"]
//var mathAssignment = GradeValueType(name: "", assignment: "Math Assignment", grade: 0)
//
//for student in students {
//    mathAssignment.name = student
//    getGradeForAssignment(assignment: &mathAssignment)
//    mathGrades.append(mathAssignment)
//}
//
//for a in mathGrades {
//    print ("\(a.name): grade \(a.grade)")
//}
//
//// Noncopyable types
//// Opt out of any protocol that is inherited by a built-in type by using a ~. For example, a
//// non-copyable type enables the creation of values with unique ownership and to prevent instances
//// from being copied. This allows single instances of value types, such as structs and enums, to
//// be shared across different parts of the code while maintaining a single owner. Do not confuse
//// this concept with that of a singleton which is a class that creates its own instance
//// of itself as a static variable and for which the object is only created once, but is shared
//// everywhere it needs to be used.
//struct Person: ~Copyable {
//    var firstName: String
//    var lastName: String
//    var emailAddress: String
//}
//
//struct CopyablePerson {
//    var firstName: String
//    var lastName: String
//    var emailAddress: String
//}
//
//// sendEmail is essentially "borrowing" an instance of the Person type while consumeUser is
//// transferring ownership of an instance of the Person type
//func sendEmail(_ user: borrowing Person) {
//    print("Sending email to \(user.firstName) \(user.lastName)")
//}
//
//func sendEmailCopy(_ user: borrowing CopyablePerson) {
//    print("Sending email to copyable person \(user.firstName) \(user.lastName)")
//}
//
//func consumeUserCopy(_ user: consuming CopyablePerson) {
//    print("Consuming User")
//}
//
//func consumeUser(_ user: consuming Person) {
//    print("Consuming User")
//}
//
//let olivia = Person(firstName: "Olivia", lastName: "Rodrigo", emailAddress: "olivia@gmail.com")
//let nicole = CopyablePerson(firstName: "Nicole", lastName: "Laeano", emailAddress: "nicole@gmail.com")
//
//sendEmail(olivia)
//consumeUserCopy(nicole)
//sendEmailCopy(nicole)
//
//func userFunction() {
//    let user = Person(firstName: "Tzuyu", lastName: "Chou", emailAddress: "tzuyu@twice.com")
//
//    sendEmail(user)
//    consumeUser(user)
//}
//
//userFunction()
//
//// Recursive data types
//class LinkedListReferenceType {
//    var value: String
//    var next: LinkedListReferenceType?
//    init(value: String) {
//        self.value = value
//    }
//}
//
//var one = LinkedListReferenceType(value: "One")
//var two = LinkedListReferenceType(value: "Two")
//var three = LinkedListReferenceType(value: "Three")
//
//var myList = [LinkedListReferenceType]()
//myList.append(one)
//myList.append(two)
//myList.append(three)
//
//for e in myList {
//    print("value: \(e.value) next: \(String(describing: e.next))")
//}
//
//// Add copy-on-write to a custom value type
//fileprivate class BackendQueue<T> {
//    private var items = [T]()
//
//    public func addItem(item: T) {
//        items.append(item)
//    }
//
//    public func getItem() -> T? {
//        if items.count > 0 {
//            return items.remove(at: 0)
//        } else {
//            return nil
//        }
//    }
//
//    public func count() -> Int {
//        return items.count
//    }
//
//    // The public initializer is used to create an instance
//    // of our type without any items in the queue
//    public init() {}
//    // The private initializer creates a new instance of the type with the items array populated
//    private init(_ items: [T]) {
//        self.items = items
//    }
//
//    public func copy() -> BackendQueue<T> {
//        return BackendQueue<T>(items)
//    }
//}
//
//struct Queue {
//    private var internalQueue = BackendQueue<Int>()
//
//    public mutating func addItem(item: Int) {
//        checkUniquelyReferencedInternalQueue()
//        internalQueue.addItem(item: item)
//    }
//
//    public mutating func getItem() -> Int? {
//        checkUniquelyReferencedInternalQueue()
//        return internalQueue.getItem()
//    }
//
//    public func count() -> Int {
//        return internalQueue.count()
//    }
//
//    private mutating func checkUniquelyReferencedInternalQueue() {
//        if !isKnownUniquelyReferenced(&internalQueue) {
//            internalQueue = internalQueue.copy()
//            print("Making a copy of internal queue")
//        } else {
//            print("Not making a copy of internal queue")
//        }
//    }
//
//    public mutating func uniquelyReferenced() -> Bool {
//        return isKnownUniquelyReferenced(&internalQueue)
//    }
//}
//
//var queue1 = Queue()
//var queue2 = queue1
//var queue3 = Queue()
//queue3.addItem(item: 1)
//print(queue3.uniquelyReferenced())
//var queue4 = queue3
//print(queue3.uniquelyReferenced())
//print(queue4.uniquelyReferenced())
//queue3.addItem(item: 2)
