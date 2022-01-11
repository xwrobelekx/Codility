//: [Previous](@previous)

import Foundation

public func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {

    //my solution works but its slow
//var  counter = 0
//
//    for i in A...B {
//        if i % K == 0 {
//            counter += 1
//        }
//    }
//    return counter

    
    //this is way faster is just a simple calculation vs looping thru numbers
    
    return (B/K - A/K + (A%K == 0 ? 1 : 0))
}




import XCTest



class CountDivTest : XCTestCase {
    
    
    func testExample() {
        XCTAssertEqual(solution(6, 11, 2), 3, "❌ Failed on example test")
    }
    
    
}

CountDivTest.defaultTestSuite.run()



//: [Next](@next)
