//: [Previous](@previous)

import Foundation

public func solution(_ A : inout [Int]) -> Int {
    
    
    //go thry array and need to find the smallest difference between sum on left and sum on right
   
    var rightSum = 0
    
    for number in A {
        rightSum += number
    }
    
    //i think i need to check here if the umber is negativer then i need to invert it.
    
    var difference = abs((rightSum - A[0]) - A[0]) //this will give me the first difference
    
    var leftSum = 0
    for i in 0..<A.count - 1 {
        
        leftSum += A[i]
        print("leftSum:")
        print(leftSum)
        rightSum -= A[i]
        print("rightSum")
        print(rightSum)
        
        //need to turn this into positive in case is negative
        let currentDifference = abs(rightSum - leftSum)
        print("cur dif: \(currentDifference), dif: \(difference)")
        if currentDifference < difference {
              difference = currentDifference
        }
    }
        
    return difference
    
}

//
//var testArr = [3, 1, 2, 4, 3]
//solution(&testArr)



import XCTest


class TestTapeEquilibrium : XCTestCase {
    
    func testSimpleExample(){
        var testArr = [3, 1, 2, 4, 3]
        XCTAssertEqual(solution(&testArr), 1, "❌ Failed on a simple example")
    }

    func testEdgeCaseNegativeAndPositive(){
        var testArr = [-1000, 1000]
        XCTAssertEqual(solution(&testArr), 2000, "❌ Failed on edgecase -1000")
    }

    func testThreeNumbers(){
        var testArr = [-100, 0, 100]
        XCTAssertEqual(solution(&testArr), 200, "❌ Failed on 3 number test -100, 0, 100")
    }
    

    func testTwoNegativeNumbers(){
        var testArr = [-100, -150]
        XCTAssertEqual(solution(&testArr), 50, "❌ Failed on two negative numbers")
    }
 
    
}

TestTapeEquilibrium.defaultTestSuite.run()






//: [Next](@next)
