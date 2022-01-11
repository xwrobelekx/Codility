//: [Previous](@previous)

import Foundation

//fins a missing number in an array

public func solution(_ A : inout [Int]) -> Int {
    
    var sum = 0
    var fullArraySum = A.count + 1
    
    //this will iterate the number of times equal to the count // we need that plus one
    for (index, number) in A.enumerated() {
        sum += number
        fullArraySum += (index + 1)
    }
    
    return  fullArraySum - sum
    
}

var numbers = [3, 1, 4, 5]
solution(&numbers)



//full array sum = 15
[2, 3, 1, 5] //missing 4 // sum = 11  // 15 - 11 = 4
[2, 3, 1, 4] // missing 5 // sum = 10  // 15 - 10 = 5
[3, 1, 4, 5]// missing 2 // sum = 13 // 15 - 13 = 2



import XCTest

class MissingNumberTest : XCTestCase {
    
    func testMissingNumberSmall() {
        var numbers = [1, 2, 4, 5]
        XCTAssertEqual(solution(&numbers), 3, "❌  Failed on a small test")
    }
    
    func testMissingNumberLarge() {
        var numbers = [3, 1, 7, 6, 9, 2, 8, 10, 4]
        XCTAssertEqual(solution(&numbers), 5, "❌  Failed on a large test")
    }
    
    
    func testMissingNumberOFTwoItems() {
        var numbers = [1]
        XCTAssertEqual(solution(&numbers), 2, "❌  Failed on a number of two items test")
    }
    
 
}

MissingNumberTest.defaultTestSuite.run()

//: [Next](@next)
