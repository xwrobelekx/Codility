//: [Previous](@previous)

import Foundation

//Time Complexity O(N) or O(N*LOG(N))
//This assums the array will be non ampty array
public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    
    let set : Set<Int> = Set(A.filter {$0 > 0})
    //    dump(set, name: "Set Dump", indent: 2)
    A = set.sorted()
    //    dump(A, name: "Sorted A array", indent: 5)
    if A.count <= 0 {
        return 1 }
    
    for (index, number) in A.enumerated() {
        
        if index + 1 != number {
            print("Indes: \(index), number: \(number)")
            //if we run out of numbers then were gone return the next one
            return index + 1
        }
    }
    
    return (A.last! + 1)
}



import XCTest

class SmallestPositiveIntTest : XCTestCase {
    
    func testSimpleExample1() {
        var arr = [1,3,6,4,1,2]
        XCTAssertEqual(solution(&arr), 5, "❌ Failed on simple test 1")
    }
    
    func testSimpleExample2() {
        var arr = [1,2,3]
        XCTAssertEqual(solution(&arr), 4, "❌ Failed on simple test 2")
    }
    
    func testNegativeNumbers() {
        var arr = [-1, -3]
        XCTAssertEqual(solution(&arr), 1, "❌ Failed on negative numbers")
    }
    
    func testShiftedSequence() {
        var arr = Array(0...100)
        var arr2 = Array(102...200)
        var joined = arr + arr2
        XCTAssertEqual(solution(&joined), 101, "❌ Failed on shifted sequence test")
        
    }
    
    func testPositiveAndNegativeArray() {
        var arr = [-1, 1, 2, 3]
        XCTAssertEqual(solution(&arr), 4, "❌ Failed on positive and negative numbers")
    }
    
}

SmallestPositiveIntTest.defaultTestSuite.run()




//: [Next](@next)
