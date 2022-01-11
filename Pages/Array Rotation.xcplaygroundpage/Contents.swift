//: [Previous](@previous)

import Foundation


public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    
    //one way to solve this would be to create a function that takes last integer from the array and place that integer at index 0
    //then i would create a loop and i would run it K times - each time calling that function
    //this is definitley costly but it should work
    
    func placeLastNumberAtTheBegining(){
        if A.count > 1 {
            let last = A.removeLast()
            A.insert(last, at: 0)
        }
    }
    
    for _ in 0..<K {
        placeLastNumberAtTheBegining()
    }
    
    return A
    
}

var sample : [Int] = [3, 8, 9, 7, 6]

solution(&sample, 3)





//Test

import XCTest

class ArrayRotationTest : XCTestCase {
    
    
    func testArrayRotation() {
        
        //empty array
        var emptyArray : [Int] = []
        
        //single value
        var singleValue : [Int] = [1]
        
        //small array random numbers all rotation
        var smallRandom = [3, 5, 7, 12, 4]
        
        //array with random rotation
        var randomRotation = [3, 5, 7, 12, 4]
        
        XCTAssertEqual(solution(&emptyArray, 1), [], "❌ Failed on empty array")
        XCTAssertEqual(solution(&singleValue, 1), [1], "❌ Failed on single number")
        XCTAssertEqual(solution(&smallRandom, 5), [3, 5, 7, 12, 4], "❌ Failed on small array all rotation")
        XCTAssertEqual(solution(&randomRotation, 3), [7, 12, 4, 3, 5], "❌ Failed on random rotation")
        
    }
}

ArrayRotationTest.defaultTestSuite.run()





//: [Next](@next)
