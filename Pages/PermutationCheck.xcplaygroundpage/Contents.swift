//: [Previous](@previous)

import Foundation


//Time complexity: O(N) or O(N*log(N))


public func solution(_ A : inout [Int]) -> Int {
    
    // im thinking of converting A to a set and compare count but it wont work for missing values it would work for duplicates
    
    //the other option is to sort the array and then compare the number to index + 1 and see it they are the same - this may work as it says it starts from 1 to N
    
    
    let sortedArray = A.sorted()
    for (index, number) in sortedArray.enumerated() {
        if index + 1 != number {
            return 0
        }
    }
    
    return 1
}



import XCTest

class PermutationTest : XCTestCase {
    
    
    func testSimpleExample() {
        var numbers = [4,1,3,2]
        XCTAssertEqual(solution(&numbers), 1, "❌ Failed on a simple example")
    }
    
    func testSimpleExample2() {
        var numbers = [4,1,3]
        XCTAssertEqual(solution(&numbers), 0, "❌ Failed on a simple example 2")
    }
    
    func testAllTheSameNumbers() {
        var numbers = [2, 2, 2]
        XCTAssertEqual(solution(&numbers), 0, "❌ Failed on all the same numbers")
    }
    
    
}

PermutationTest.defaultTestSuite.run()

//: [Next](@next)
