//
//  main.swift
//  MasteringSwift
//
//  Created by Rob Ranf on 3/31/25.
//
//
//import Foundation
//import Dispatch
//// Concurrency with Grand Central Dispatch
//func performCalculation(_ iterations: Int, tag: String) {
//    let start = CFAbsoluteTimeGetCurrent()
//    for _ in 0 ..< iterations {
//        let x = 100
//        _ = x * x
//    }
//    let end = CFAbsoluteTimeGetCurrent()
//    print("time for \(tag):\(end - start)")
//}
//
////let currentQueue = DispatchQueue(label: "cqueue.ranf.madison", attributes: .concurrent)
////let serialQueue = DispatchQueue(label: "squeue.ranf.madison")
//
//let cqueue = DispatchQueue(label: "cqueue.ranf.madison", attributes: .concurrent)
////let c = {
////    performCalculation(1000, tag: "async1")
////}
////cqueue.async(execute: c)
//
//print("Starting...")
//DispatchQueue.global().async {
//    performCalculation(100_000, tag: "global1")
//}
//
//cqueue.async {
//    print("Starting async1...")
//    performCalculation(10_000_000, tag: "async1")
//    print("Done with async1...")
//}
//
//cqueue.async {
//    performCalculation(1000, tag: "async2")
//}
//
//cqueue.async {
//    performCalculation(100_000, tag: "async3")
//}
