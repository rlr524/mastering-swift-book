//
//  main.swift
//  MasteringSwift
//
//  Created by Rob Ranf on 2/12/25.
//

//import Foundation
//
//protocol Person {
//    var firstName: String { get set }
//    var lastName: String { get set }
//    var birthDate: Date { get set }
//    var profession: String { get }
//}
//
//func updatePerson(person: Person) -> Person {
//    return person
//}
//
//var madison: Person
//
//struct Student: Person {
//    var firstName: String
//    var lastName: String
//    var birthDate: Date
//    var profession: String
//
//    /** Part of the reason to not normally use protocols with structs is that a struct normally
//    gives you a free initializar for all properties, but if you're conforming to a protocol
//    that includes an initializer, then you need to explicitly init your properties. **/
//    init(firstName: String, lastName: String, birthDate: Date) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.birthDate = birthDate
//        self.profession = ""
//    }
//}
//
//var madiBdayComponents = DateComponents()
//madiBdayComponents.year = 2006
//madiBdayComponents.month = 6
//madiBdayComponents.day = 2
//
//let calendar = Calendar.current
//let madibdaydate = calendar.date(from: madiBdayComponents)
//
//let madisonRanf = Student(firstName: "Madison", lastName: "Ranf", birthDate: madibdaydate ?? .now)
//print(madisonRanf.birthDate.formatted(date: .numeric, time: .omitted))
//print(madisonRanf.birthDate.formatted(date: .long, time: .omitted))
//
//protocol Kid {
//    var firstName: String { get set }
//    var lastName: String { get set }
//    var age: Int { get set}
//    var cuteness: Int { get set}
//    var spankability: Int { get set }
//}
//
//struct Girl: Kid {
//    var firstName: String
//    var lastName: String
//    var age: Int
//    var cuteness: Int
//    var spankability: Int
//}
//
//struct Boy: Kid {
//    var firstName: String
//    var lastName: String
//    var age: Int
//    var cuteness: Int
//    var spankability: Int
//    var getsWhipped: Bool
//}
//
//let madi = Girl(firstName: "Madison", lastName: "Hu", age: 22, cuteness: 98, spankability: 100)
//let hyein = Girl(firstName: "Hye-in", lastName: "Lee", age: 16, cuteness: 98, spankability: 98)
//
//var kids: [Kid] = []
//kids.append(madi)
//kids.append(hyein)
//
//let jason = Boy(firstName: "Jason", lastName: "Kim", age: 18, cuteness: 96, spankability: 99, getsWhipped: true)
//let kenji = Boy(firstName: "Kenji", lastName: "Matsui", age: 14, cuteness: 98, spankability: 98, getsWhipped: false)
//
//kids.append(jason)
//kids.append(kenji)
//
//for kid in kids {
//    print("\(kid.firstName) is \(kid.cuteness) percent cute and \(kid.spankability) percent spankable.")
//}
//
//for kid in kids {
//    if kid is Girl {
//        print("\(kid.firstName) will be spanked bare bottom over the knee")
//    } else if let k = kid as? Boy {
//        print("\(kid.firstName) gets whipped? \(k.getsWhipped)")
//    }
//}
//
//for kid in kids {
//    switch kid {
//    case is Girl:
//        print("\(kid.firstName) will be spanked bare bottom over the knee")
//    case is Boy:
//        print("\(kid.firstName) gets whipped.")
//    default:
//        print("Adults don't get spanked, only girls and boys.")
//    }
//}
//
//// Protocol extensions
//protocol Dog {
//    var name: String { get set }
//    var color: String {get set }
//    func speak() -> String
//}
//
//extension Dog {
//    func speak() -> String {
//        return "Woof"
//    }
//}
//
//struct JackRussel: Dog {
//    var name: String
//    var color: String
//}
//
//class WhiteLab: Dog {
//    var name: String
//    var color: String
//    init(name: String, color: String) {
//        self.name = name
//        self.color = color
//    }
//}
//
//struct Mutt: Dog {
//    func speak() -> String {
//        return "Woof woof"
//    }
//    
//    var name: String
//    var color: String
//}
//
//let lester = JackRussel(name: "Lester", color: "brown")
//let frank = WhiteLab(name: "Frank", color: "white")
//let milton = Mutt(name: "Milton", color: "tan")
//
//print(lester.speak())
//print(frank.speak())
//print(milton.speak())
//
//let mixed: [any Dog] = [lester, frank, milton]
//
//for d in mixed {
//    print(d.name)
//}
//
//struct Name: Equatable {
//    var firstName: String
//    var lastName: String
//
//    static func == (lhs: Name, rhs: Name) -> Bool {
//        return lhs.lastName == rhs.lastName
//    }
//}
//
//let name1 = Name(firstName: "Madison", lastName: "Ranf")
//let name2 = Name(firstName: "Mei", lastName: "Ranf")
//let name3 = Name(firstName: "Dad", lastName: "Ranf")
//
//print(name1 == name2)
//
//
