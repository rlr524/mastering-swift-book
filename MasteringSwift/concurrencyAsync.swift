////
////  main.swift
////  MasteringSwift
////
////  Created by Rob Ranf on 4/7/25.
////
//
//import Foundation
//
///*
//// Concurrency with async operations
//// Data race conditions and Swift 6
//var count = 0
//let queue = DispatchQueue.global()
//
//func incrementCount() {
//    for _ in 0..<1000 {
//        queue.async {
//            count += 1
//            print(count)
//        }
//    }
//}
//
//incrementCount()
//print("Final: \(count)")
//
//var newCount = 0
//func newIncrementalCount() {
//    for _ in 0..<1000 {
//        newCount += 1
//        print(newCount)
//    }
//}
//
//
//print("Starting new count...")
//newIncrementalCount()
//print("Final: \(newCount)")
//*/
//
//// Async and await
////func retrieveData() async -> String {
////    print("Retrieving data")
////    try! await Task.sleep(nanoseconds: 2_000_000_000)
////    return "Data retrieved!"
////}
////
////func loadContent() async {
////    let data = await retrieveData()
////    print("Data: \(data)")
////}
////
////await loadContent()
//
//func retrieveUserData() async -> String {
//    print("Retrieving user data...")
//    try! await Task.sleep(nanoseconds: 2_000_000_000)
//    return "User data retrieved"
//}
//
////func retrieveImageData() async -> String {
////    print("Retrieving image data...")
////    try! await Task.sleep(nanoseconds: 4_000_000_000)
////    return "Image data retrieved"
////}
////
////async let userData = retrieveUserData()
////async let imageData = retrieveImageData()
////let results = await(userData, imageData)
////print("User data: \(results.0) Image Data: \(results.1)")
//
//let task = Task {
//    let data = await retrieveUserData()
//    print("Data from detached task: \(data)")
//}
//
//await task.value
//
//// Actors
//actor BankAccount {
//    private var balance: Double
//    private var transactions = [Transaction]()
//    
//    init(balance: Double) {
//        self.balance = balance
//    }
//    
//    func deposit(amount: Double) {
//        balance += amount
//    }
//    
//    func withdraw(amount: Double) -> Bool {
//        if balance >= amount {
//            balance -= amount
//            return true
//        } else {
//            return false
//        }
//    }
//    
//    func getBalance() -> Double {
//        return balance
//    }
//    
//    func addTransaction(_ transaction: Transaction) {
//        transactions.append(transaction)
//    }
//    
//    func showTransactions() -> [Transaction] {
//        return transactions
//    }
//}
//
//let account = BankAccount(balance: 5000.00)
//let _ = await account.withdraw(amount: 100.00)
//print("New balance \(await account.getBalance())")
//
//struct Transaction: Sendable {
//    let id: Int
//    let amount: Double
//    let description: String
//}
//
//let transaction = Transaction(id: 10001, amount: 100.00, description: "A transaction")
//let newAccount = BankAccount(balance: 1000.00)
//let _ = await newAccount.addTransaction(transaction)
//let audit = await newAccount.showTransactions()
//print(audit)
