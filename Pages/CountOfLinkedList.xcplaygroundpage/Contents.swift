//: [Previous](@previous)

import Foundation

/*
 Array A represents a linked list. A list is constructed from this array as follows:

 the first node (the head) is located at index 0;
 the value of a node located at index K is A[K];
 if the value of a node is −1 then it is the last node of the list;
 otherwise, the successor of a node located at index K is located at index A[K] (you can assume that A[K] is a valid index, that is 0 ≤ A[K] < N).
 */

func solution(_ A : [Int]) -> Int {
    var count = 0
    var i = 0
    
    for _ in 0..<A.count{
        
        count += 1
        if A[i] == -1 {
            return count
        }
        
        
        i = A[i]
    }
    return count
}



import XCTest

class LinkedListCountTests : XCTestCase {
    
    func testSample() {
        let input = [1, 4, -1, 3, 2]
        XCTAssertEqual(solution(input), 4, "Failed sample test")
    }
    
    
    
}


LinkedListCountTests.defaultTestSuite.run()




//: [Next](@next)
