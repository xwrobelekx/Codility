//: [Previous](@previous)

import Foundation


//after test is passed at 100% time complexity O(1) - nice
public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    //goal is an efficient algorithm
    
    //starting point is x
    //end point is y
    // and it jumps D amount
    
    
    //basic mmath would look like this:
    // ( y - x ) / D
    // and it wopuld need to ne rounded up
    
    let distance = Y - X
    var numberOfJumps = Double(distance) / Double(D)
    
    let j = numberOfJumps.rounded(.up)
    return Int(j)
    
}


solution(20, 60, 700)



import XCTest
class FrogJumpTest : XCTestCase {
    
    func testTheJump() {
        let simpleJump = solution(20, 60, 20)
        let extemeDistanceNoJump = solution(1000000, 1000000, 1)
        let manyJumps = solution(0, 2500, 2)
        
        
        XCTAssertEqual(simpleJump, 2, "❌ Failed on simple test")
        XCTAssertEqual(extemeDistanceNoJump, 0, "❌ Failed extreme Distance no jump needed")
        XCTAssertEqual(manyJumps, 1250, "❌ Faild on manyJumps")

    }
}



FrogJumpTest.defaultTestSuite.run()








//: [Next](@next)
