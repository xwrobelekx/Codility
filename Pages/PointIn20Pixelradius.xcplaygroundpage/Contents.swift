//: [Previous](@previous)

import Foundation




public func solution(_ A : [Int], _ B : [Int], _ X : Int, _ Y : Int) -> Int {

    //given x and y calculate all posibble numbers in 20 pixel radius
    //go thru the arrays and see if i have a match

    if A.count == B.count {
        for i in 0..<A.count {
            if pow(Double(A[i] - X), 2) + pow(Double(B[i] - Y), 2) <= pow(20, 2) {
                return i
            }
        }
    }
    return 1

}

import XCTest

class FindIfThePointIsWithin20PointsOfAnyOfTheCoordinatesPoints : XCTestCase {

    func testExampleOne(){
        //if its within 20 pixels
        XCTAssertEqual(solution([100, 200, 100], [50, 100, 100], 100, 100), 2)
        
        
    
    }
    
}

FindIfThePointIsWithin20PointsOfAnyOfTheCoordinatesPoints.defaultTestSuite.run()

//: [Next](@next)
