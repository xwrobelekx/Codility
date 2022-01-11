//: [Previous](@previous)

import Foundation

//This solution works but its slow
//time complexity : O(N^2)

public func solution(_ A : inout [Int]) -> Int {
    
    
    var pairCount = 0
    
//    for (index, zero) in A.enumerated() {
//        print("index: \(index), zero: \(zero)")
//        if zero == 0 {
//            for i in index..<A.count {
//                print("i = \(i)")
//                let one = A[i]
//                print("one: \(one)")
//                if one == 1 {
//                    pairCount += 1
//                }
//            }
//        }
//    }
    
    
    
    //nice this solutionsis perfect
    //time complexity: O(N) - only one loop
    var zeroCount = 0

    for num in A {

        if num == 0 {
            zeroCount += 1
        }
        if num == 1 {
            pairCount += zeroCount
        }
        if pairCount > 1000000000 {
            return -1
        }
    }
    
    return pairCount
}





import XCTest

class PassingCarsTests : XCTestCase {
    
    
    func testExample() {
        var arr = [0, 1, 0, 1, 1]

        XCTAssertEqual(solution(&arr), 5, "❌ Fails on Example test")
    }
    
    func testExample2() {
        var arr = [0, 1, 0, 1, 1, 0, 1]
        
        XCTAssertEqual(solution(&arr), 8, "❌ Fails on Example2 test")
    }
    
    func testAllZeros() {
        var arr = [0, 0, 0, 0]
        XCTAssertEqual(solution(&arr), 0, "❌ Failed on all Zeros test")

    }

    func testAllOnes(){
        var arr = [1, 1, 1, 1, 1]
        XCTAssertEqual(solution(&arr), 0, "❌ Failed on all Ones test")

    }
    
    //How to run a test on a massive numbers and check the time it took
    // well use one of the initalizers to create large array
    // the test itseld tell you the time it takes to execute code.
    
    
    
}

PassingCarsTests.defaultTestSuite.run()

//: [Next](@next)
