////
////  main.swift
////  MasteringSwift
////
////  Created by Rob Ranf on 4/9/25.
////
//
//import Foundation
//// Memory management
//
//class MyClass {
//    var name = ""
//    init(name: String) {
//        self.name = name
//        print("Initializing class with name \(self.name)")
//    }
//    deinit {
//        print("Releasing class with name \(self.name)")
//    }
//}
//
////var classOneRef: MyClass? = MyClass(name: "One")
////var classTwoRef: MyClass? = MyClass(name: "Two")
////var classTwoRef2: MyClass? = classTwoRef
////print("Setting classOneRef to nil")
////classOneRef = nil
////print("Setting classTwoRef to nil")
////classTwoRef = nil
////print("Setting classTwoRef2 to nil")
////classTwoRef2 = nil
//
//class MyClassOne_Strong {
//    var name = ""
//    var class2: MyClassTwo_Strong?
//    init(name: String) {
//        self.name = name
//        print("Initializing classOne_Strong with name \(self.name)")
//    }
//    deinit {
//        print("Releasing classOne_String with name \(self.name)")
//    }
//}
//
//class MyClassTwo_Strong {
//    var name = ""
//    var class1: MyClassOne_Strong?
//    
//    init(name: String) {
//        self.name = name
//        print("Init classOne_Strong with name \(self.name)")
//    }
//    deinit {
//        print("Release classOne_Strong with name \(self.name)")
//    }
//}
//
//
//var class1: MyClassOne_Strong? = MyClassOne_Strong(name: "ClassOne_Strong")
//var class2: MyClassTwo_Strong? = MyClassTwo_Strong(name: "ClassTwo_Strong")
//class1?.class2 = class2
//class2?.class1 = class1
//print("Setting classes to nil")
//class2 = nil
//class1 = nil
//
//
//class MyClass1_Unowned {
//    var name = ""
//    unowned let class2b: MyClass2_Unowned
//    init(name: String, class2b: MyClass2_Unowned) {
//        self.name = name
//        self.class2b = class2b
//        print("Initializing class1_Unowned with name \(self.name)")
//    }
//    deinit {
//        print("Releasing class1_Unowned with name \(self.name)")
//    }
//}
//
//class MyClass2_Unowned {
//    var name = ""
//    var class1b: MyClass1_Unowned?
//    init(name: String) {
//        self.name = name
//        print("Initializing class2_Unowned with name \(self.name)")
//    }
//    deinit {
//        print("Releasing class2_Unowned with name \(self.name)")
//    }
//}
//
//let class2b = MyClass2_Unowned(name: "Class2_Unowned")
//let class1b: MyClass1_Unowned? = MyClass1_Unowned(name: "class1_Unowned",class2b: class2b)
//class2b.class1b = class1b
//print("Classes going out of scope")
//
//
//class MyClass1_Weak {
//    var name = ""
//    var class2c: MyClass2_Weak?
//    init(name: String) {
//        self.name = name
//        print("Initializing class1_Weak with name \(self.name)")
//    }
//    deinit {
//        print("Releasing class1_Weak with name \(self.name)")
//    }
//}
//class MyClass2_Weak {
//    var name = ""
//    weak var class1c: MyClass1_Weak?
//    init(name: String) {
//        self.name = name
//        print("Initializing class2_Weak with name \(self.name)")
//    }
//    deinit {
//        print("Releasing class2_Weak with name \(self.name)")
//    }
//}
//
//let class1c: MyClass1_Weak? = MyClass1_Weak(name: "Class1_Weak")
//let class2c: MyClass2_Weak? = MyClass2_Weak(name: "Class2_Weak")
//class1c?.class2c = class2c
//class2c?.class1c = class1c
//print("Classes going out of scope")
