//: [Previous](@previous)

import Foundation


//time complexity: O(N)

public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    
    //what if i generated a sorted arry of number from 1 ... X
    //and then loop over thru A and remove items from that array and keep count oh how many moves it took
    
    
    
    

//index will tell me the enumeration number aka the t
var setOfUniqueNumbers : Set<Int> = []

for (index, number) in A.enumerated() {
    setOfUniqueNumbers.insert(number)
    if setOfUniqueNumbers.count == X {
        return index
    }
}

    return -1
}



import XCTest


class FrogRiverOneTest : XCTestCase {
    
    func testSimpleNumbers() {
        var numbers = [1,3,1,4,2,3,5,4]
        XCTAssertEqual(solution(5, &numbers), 6, "❌ Failed on simple test")
    }
    
    func testAllTheSameNumbers() {
        var numbers = [2,2,2,2,2]
        XCTAssertEqual(solution(2, &numbers), -1, "❌ Failed when all the number are the same case.")
    }
    
    
    
    
}


FrogRiverOneTest.defaultTestSuite.run()


//: [Next](@next)
